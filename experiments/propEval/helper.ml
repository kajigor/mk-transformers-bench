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

module F = Fmap2 (struct type ('a, 'b) t = ('a, 'b) fa let fmap f g x = gmap(fa) f g x end)

let conj x y = inj @@ F.distrib (Conj (x, y))
let disj x y = inj @@ F.distrib (Disj (x, y))
let var  x   = inj @@ F.distrib (Var x)
let neg  x   = inj @@ F.distrib (Neg x)

let max x y m =
  ((Std.Nat.geo x y (!!true)) &&& (m === x)) ||| ((Std.Nat.leo x y (!!true)) &&& (m === y))


let rec depth fm d =
  (fresh (z) ((fm === var z) &&& (d === Std.Nat.zero))) |||
  (fresh (x dx) ((fm === neg x) &&& (d === Std.Nat.succ dx) &&& (depth x dx))) |||
  (fresh (x y dx dy m) ((fm === conj x y) &&& (depth x dx) &&& (depth y dy) &&& (max dx dy m) &&& (d === Std.Nat.succ m))) |||
  (fresh (x y dx dy m) ((fm === disj x y) &&& (depth x dx) &&& (depth y dy) &&& (max dx dy m) &&& (d === Std.Nat.succ m)))


let rec reify_f f = F.reify reify_f Std.Nat.reify f

let var_to_string r = (show(logic) (show(bool))) (r#reify reify)
let fm_to_string fm = (show(f)) (fm#reify reify_f)

let stream_4_vars_to_list n stream =
  RStream.take ~n:n
  @@ stream (fun s q r t -> (s, q, r, t))

let iter_formula_3_vars n r f =
  List.iter f
  @@ stream_4_vars_to_list n r


let run_formula n textRepr r =
  Printf.printf "-----------------------------\n%s\n" textRepr;
  (* Printf.printf "\n\nSize: %i\n\n" (List.length @@ RStream.take ~n:n @@ r (fun q r t fm -> (q, r, t, fm)))
   ; *)
  iter_formula_3_vars n r
    ( fun (q, r, t, fm) ->
        Printf.printf "O:\t%s\tS(O):\t%s\tS(S(O)):\t%s\tFm:\t%s\n"
          (var_to_string q)
          (var_to_string r)
          (var_to_string t)
          (fm_to_string fm)
    )

let run_formula_f file =
  List.iter
    ( fun (q, r, t, fm) ->
        Printf.fprintf file "O:\t%s\tS(O):\t%s\tS(S(O)):\t%s\tFm:\t%s\n"
          (var_to_string q)
          (var_to_string r)
          (var_to_string t)
          (fm_to_string fm)
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

let rec cross xs = function
| [] -> []
| y :: ys -> List.map (fun x -> (x, y)) xs @ cross xs ys

let rec cross_diag xs =
  match xs with
  | [] -> []
  | x :: xs -> List.map (fun y -> (x, y)) xs @ cross_diag xs

(* let max x y = if x > y then x else y

let rec formula_depth = function
| Var x -> 1
| Neg x -> 1 + (formula_depth x)
| Conj (x, y) -> 1 + (max (formula_depth x) (formula_depth y))
| Disj (x, y) -> 1 + (max (formula_depth x) (formula_depth y))

let average_depth xs =
  let depths = List.map (fun (_,_,_,x) -> formula_depth (x#reify reify_f )) xs in
  let sum = List.fold_left (fun x y -> x + y) 0 depths in
  float_of_int sum /. float_of_int (List.length depths) *)

let res_to_string (v1,v2,v3,fm) =
  Printf.sprintf  "%s, %s, %s, %s"
                  (var_to_string v1)
                  (var_to_string v2)
                  (var_to_string v3)
                  (fm_to_string fm)

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
              let file = Printf.sprintf "res/%s/%s.%s.log" goal_name name_x name_y in
              let oc = open_out file in
              (* Find a better way to compare formulas *)
              let (common, only_x, only_y, c, x, y) =
                sameness (List.map res_to_string res_x)
                         (List.map res_to_string res_y) in
              (* Printf.fprintf oc "Common: %i\n%s: %i\n%s: %i\nAverageDepth_%s: %f\nAverageDepth_%s: %f" c name_x x name_y y name_x (average_depth res_x) name_y (average_depth res_y); *)
              Printf.fprintf oc "Common: %i\n%s: %i\n%s: %i\n\nCommmon formulas:\n\n" c name_x x name_y y;
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
      try Unix.mkdir (Printf.sprintf "res/%s" goal_name) 0o755
      with _ -> () ;

      List.iter
        ( fun (name, results) ->
          let file = Printf.sprintf "res/%s.%s.out" goal_name name in
          let oc = open_out file in
          run_formula_f oc results;
          close_out oc
        ) xs
    ) lst
  ; let file = "res/statistics.log" in
  let oc = open_out file in
  make_statistics oc lst ;
  close_out oc