open OCanren
open GT
open Benchmark

@type ('a, 'b) fa =
| Conj of 'a * 'a
| Disj of 'a * 'a
| Neg  of 'a
| Var  of 'b
with show, gmap

@type f = (f, Std.Nat.logic) fa logic with show, gmap

@type ground_f = (ground_f, Std.Nat.ground) fa with show, gmap


module F = Fmap2 (struct type ('a, 'b) t = ('a, 'b) fa let fmap f g x = gmap(fa) f g x end)

let conj x y = inj @@ F.distrib (Conj (x, y))
let disj x y = inj @@ F.distrib (Disj (x, y))
let var  x   = inj @@ F.distrib (Var x)
let neg  x   = inj @@ F.distrib (Neg x)

let max_nat x y m =
  ((Std.Nat.geo x y (!!true)) &&& (m === x)) ||| ((Std.Nat.leo x y (!!true)) &&& (m === y))


let rec depth_log fm d =
  (fresh (z) ((fm === var z) &&& (d === Std.Nat.zero))) |||
  (fresh (x dx) ((fm === neg x) &&& (d === Std.Nat.succ dx) &&& (depth_log x dx))) |||
  (fresh (x y dx dy m) ((fm === conj x y) &&& (depth_log x dx) &&& (depth_log y dy) &&& (max_nat dx dy m) &&& (d === Std.Nat.succ m))) |||
  (fresh (x y dx dy m) ((fm === disj x y) &&& (depth_log x dx) &&& (depth_log y dy) &&& (max_nat dx dy m) &&& (d === Std.Nat.succ m)))


let rec reify_f f = F.reify reify_f Std.Nat.reify f

let var_to_string r = (show(logic) (show(bool))) (r#reify reify)
let fm_to_string fm = (show(f)) (fm#reify reify_f)

let project_4th_var n stream =
  RStream.take ~n:n
  @@ stream (fun s q r t -> (s, q, r, project t))

let iter_formula_project n r f =
  List.iter f
  @@ project_4th_var n r

let stream_4_vars_to_list n stream =
  RStream.take ~n:n
  @@ stream (fun s q r t -> (s, q, r, t))

let stream_3_vars_to_list n stream =
  RStream.take ~n:n
  @@ stream (fun s q t -> (s, q, t))


let iter_formula_3_vars n r f =
  List.iter f
  @@ stream_3_vars_to_list n r


let rec depth = function
| Var x -> 1
| Neg x -> 1 + (depth x)
| Conj (x, y) -> 1 + (max (depth x) (depth y))
| Disj (x, y) -> 1 + (max (depth x) (depth y))

let rec branches = function
| Var x -> 0
| Neg x -> 1 + (branches x)
| Conj (x, y) -> 2 + ((branches x) + (branches y))
| Disj (x, y) -> 2 + ((branches x) + (branches y))

let sum_up xs = List.fold_left (fun x y -> x + y) 0 xs

let average xs =
  let sum = sum_up xs in
  float_of_int sum /. float_of_int (List.length xs)

let average_depth xs =
  List.map depth xs
  |> average

let average_branch xs =
  List.map branches xs
  |> average


(* let run_formula n textRepr r =
  let average = average_depth (RStream.take ~n:n @@ r (fun x y z t -> (x, y, z, project t))) in
  Printf.printf "-----------------------------\nAverage Depth: %s\n%s\n" (string_of_float average) textRepr;

  (* Printf.printf "\n\nSize: %i\n\n" (List.length @@ RStream.take ~n:n @@ r (fun q r t fm -> (q, r, t, fm)))
   ; *)
   iter_formula_project n r
    ( fun (q, r, t, fm) ->
        Printf.printf "O:\t%s\tS(O):\t%s\tS(S(O)):\t%s\tFm:\t%s\n"
          (var_to_string q)
          (* (show(bool) r) *)
          (var_to_string r)
          (var_to_string t)
          (Printf.sprintf "%s, Depth: %s" (show(ground_f) fm) (depth fm |> string_of_int))
    ) *)

let rec cross xs = function
| [] -> []
| y :: ys -> List.map (fun x -> (x, y)) xs @ cross xs ys

let rec cross_diag xs =
  match xs with
  | [] -> []
  | x :: xs -> List.map (fun y -> (x, y)) xs @ cross_diag xs

let rename_vars q r =
  let q = var_to_string q in
  let r = var_to_string r in
  let is_var x = String.get x 0 = '_' in
  let rename_var x = if is_var x then "_" else x in
  if is_var q && is_var r
  then
    if q = r
    then ("_", "_")
    else ("_.0", "_.1")
  else
    (rename_var q, rename_var r)

let map_formula_3_vars n r f =
  List.map f
  @@ stream_3_vars_to_list n r

let compare_formulas x y =
  (-1) * Pervasives.compare x y

let fm_gt (fm1, q1, r1, _) (fm2, q2, r2, _) =
  (fm1, q1, r1) > (fm2, q2, r2)

let get_unification_counter (_,_,_,uc) = uc

let merge_results (fm, q, r, uc1) (_,_,_,uc2) =
  (fm, q, r, uc1, uc2)

let rec common_formulas l1 l2 =
  match l1 with
  | [] -> []
  | h1::t1 -> (
    match l2 with
    | [] -> []
    | h2::t2 when fm_gt h1 h2 -> common_formulas t1 l2
    | h2::t2 when fm_gt h2 h1 -> common_formulas l1 t2
    | h2::t2 ->
      merge_results h1 h2 :: common_formulas t1 t2
  )

(* let rec common_formulas l1 l2 =
  match l1 with
  | [] -> []
  | h1::t1 -> (
    match l2 with
    | [] -> []
    | h2::t2 when fm_gt h1 h2 -> common_formulas t1 l2
    | h2::t2 when fm_gt h2 h1 -> common_formulas l1 t2
    | h2::t2 ->
      match common_formulas t1 t2 with
      | [] -> [h1]
      | h3::t3 as l when h3 = h1 -> l
      | h3::t3 as l -> h1::l
  ) *)

let compute_average n xs =
  let results = List.map (fun (name, rs) -> (name, map_formula_3_vars n rs (fun (_,(_,_,fm)) -> project fm))) xs in
  let file = "unifs/average.csv" in
  let oc = open_out file in
  Printf.fprintf oc "name;average_width;average_depth\n";
  List.iter (fun (name, rs) -> Printf.fprintf oc "%s;%f;%f\n" name (average_branch rs) (average_depth rs)) results;
  close_out oc

let convert_results n r =
  let formulas = map_formula_3_vars n r
  ( fun (uc, (q, r, fm)) ->
      let (q,r) = rename_vars q r in
      (fm_to_string fm, q, r, uc)
  ) in
  let sorted = List.sort compare_formulas formulas in
  sorted

let run_formula_raw (textRepr, results) =
  Printf.printf "%s\n" textRepr;
  let file = Printf.sprintf "unifs500/%s.csv" (String.trim textRepr) in
  let oc = open_out file in
  Printf.fprintf oc "unifs;var0;var1;formula\n";
  List.iter (fun (fm, q, r, uc) -> Printf.fprintf oc "%d;%s;%s;%s\n" uc q r fm) results;
  close_out oc

let common_to_csv name1 name2 common =
  let name1 = String.trim name1 in
  let name2 = String.trim name2 in
  let file = Printf.sprintf "unifs500/%s_%s.csv" name1 name2 in
  Printf.printf "%s\n" file;
  let oc = open_out file in
  Printf.fprintf oc "unifs_%s;unifs_%s;var0;var1;formula\n" name1 name2 ;
  List.iter (fun (fm, q, r, uc1, uc2) -> Printf.fprintf oc "%d;%d;%s;%s;%s\n" uc1 uc2 q r fm) common;
  close_out oc




let compare_unification_counters xs =
  List.iter run_formula_raw xs;
  let crossed = cross_diag xs in
  let common = List.map (fun ((name1, res1), (name2, res2)) -> (name1, name2, common_formulas res1 res2)) crossed in
  List.iter (fun (name1, name2, common) ->
    common_to_csv name1 name2 common
  ) common



let run_formula_with_unifs' n textRepr r =
  Printf.printf "-----------------------------\n%s\n" textRepr;
  List.iter (fun (us, (q, r, fm)) ->
                    Printf.printf "Unifs: %d\tO:\t%s\tS(O):\t%s\tFm:\t%s\n"
                                  us
                                  (var_to_string q)
                                  (var_to_string r)
                                  (fm_to_string fm)
            ) @@
            RStream.take ~n:n @@ r (fun q r fm -> (q, r, fm))


let run_formula_with_unifs n textRepr r =
  Printf.printf "-----------------------------\n%s\n" textRepr;
  List.iter (fun (q, r, fm) ->
                    Printf.printf "O:\t%s\tS(O):\t%s\tFm:\t%s\n"
                                  (var_to_string q)
                                  (var_to_string r)
                                  (fm_to_string fm)
            ) @@
            RStream.take ~n:n @@ r (fun q r fm -> (q, r, fm))

let run_formula_f file =
  List.iter
    ( fun (q, r, t, fm) ->
        Printf.fprintf file "O:\t%s\tS(O):\t%s\tS(S(O)):\t%s\tFm:\t%s\n"
          (var_to_string q)
          (var_to_string r)
          (var_to_string t)
          (fm_to_string fm)
    )


let run_formula_f_proj file =
  List.iter
    ( fun (q, r, t, fm) ->
        Printf.fprintf file "O:\t%s\tS(O):\t%s\tS(S(O)):\t%s\tFm:\t%s\n"
          (var_to_string q)
          (var_to_string r)
          (var_to_string t)
          (show(ground_f) fm)
    )


let run_time n text r =
  let t = Sys.time() in
  let fx = RStream.take ~n:n @@ r (fun _ _ fm -> fm) in
  Printf.printf "%s: %fs\n" text (Sys.time() -. t);
  fx

let take n fn = fun goal -> RStream.take ~n:n @@ (fn goal) (fun fm -> fm)

let sameness xs ys =
  let diff l1 l2 = List.filter (fun x -> not (List.mem x l2)) l1 in
  let common = List.filter (fun x -> List.mem x ys) xs in
  let only_x = diff xs common in
  let only_y = diff ys common in
  (common, only_x, only_y, List.length @@ common, List.length xs, List.length ys)


let sum_time res =
  List.fold_left (fun x y -> x +. y.wall) 0.0 res

let merge2 fst snd =
  List.map2 (fun (n, x) (m, y) -> if n = m then (n, x @ [y]) else raise @@ Invalid_argument "Different row names") fst snd

let merge_results lst =
  List.fold_left merge2
                 (List.map (fun (n, x) -> (n, [x])) @@ List.hd lst)
                 (List.tl lst)

let res_to_string lst =
  String.concat "," @@
  List.map (fun res -> Printf.sprintf "%f" (sum_time res)) lst

let to_csv file samples_list =
  let oc = open_out file in
  let (names, samples) = List.split samples_list in
  Printf.fprintf oc ",%s\n" (String.concat "," @@ names) ;
  List.iter (fun (name, res) -> Printf.fprintf oc "%s,%s\n" name (res_to_string res)) (merge_results samples);
  close_out oc

let do_tables m n fn lst name =
  let samples = Benchmark.latencyN m (List.map (fun (name, goal) -> (name, take n fn, goal)) lst) in
  Benchmark.tabulate samples;
  (name, samples)

let res_to_string (v1,v2,v3,fm) =
  Printf.sprintf  "%s, %s, %s, %s"
                  (var_to_string v1)
                  (var_to_string v2)
                  (var_to_string v3)
                  (fm_to_string fm)

let res_to_string_4th_proj (v1, v2, v3, fm) =
  Printf.sprintf  "%s, %s, %s, %s"
                  (var_to_string v1)
                  (var_to_string v2)
                  (var_to_string v3)
                  (show(ground_f) fm)


let make_statistics oc lst =
  Printf.fprintf oc "Here lies statistics" ;
  List.iter
    ( fun (num, goal_name, xs) ->
      cross_diag xs |>
      List.iter
        ( fun ((name_x, res_x), (name_y, res_y)) ->
            if name_x = name_y
            then
              ()
            else
              let file = Printf.sprintf "res500/%s/%s.%s.log" goal_name name_x name_y in
              (* let average_x = average_depth res_x in
              let average_y = average_depth res_y in
              let branches_x = average_branch res_x in
              let branches_y = average_branch res_y in *)
              let oc = open_out file in
              (* Find a better way to compare formulas *)
              (* let (common, only_x, only_y, c, x, y) =
                sameness (List.map res_to_string_4th_proj res_x)
                         (List.map res_to_string_4th_proj res_y) in *)
              let (common, only_x, only_y, c, x, y) =
              sameness  (List.map res_to_string res_x)
                        (List.map res_to_string res_y) in
              (* Printf.fprintf oc "Common: %i\n%s: %i\n%s: %i\nAverage depth in %s: %f\nAverage depth in %s: %f\nAverage branch in %s: %f\nAverage branch in %s: %f\nCommmon formulas:\n\n" c name_x x name_y y name_x average_x name_y average_y name_x branches_x name_y branches_y; *)
              Printf.fprintf oc "Common: %i\n%s: %i\n%s: %i\nCommmon formulas:\n\n" c name_x x name_y y ;
              List.iter (fun x -> Printf.fprintf oc "%s\n" x) common;
              Printf.fprintf oc "\nOnly in %s\n\n" name_x;
              List.iter (fun x -> Printf.fprintf oc "%s\n" x) only_x;
              Printf.fprintf oc "\nOnly in %s\n\n" name_y;
              List.iter (fun x -> Printf.fprintf oc "%s\n" x) only_y;
              close_out oc
        )


    )
    lst

let make_report lst =
  List.iter
    ( fun (num, goal_name, xs) ->
      try Unix.mkdir (Printf.sprintf "res500/%s" goal_name) 0o755
      with _ -> () ;

      List.iter
        ( fun (name, results) ->
          let file = Printf.sprintf "res500/%s.%s.out" goal_name name in
          let oc = open_out file in
          (* run_formula_f_proj oc results; *)
          run_formula_f oc results;
          close_out oc
        ) xs
    ) lst
  ; let file = "res500/statistics.log" in
  let oc = open_out file in
  make_statistics oc lst ;
  close_out oc