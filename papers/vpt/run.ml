open OCanren
open GT
open Helper

let two = Std.Nat.succ (Std.Nat.succ Std.Nat.zero)

let inputs =
  [
    "   perfect", (fun x y z -> Perfect.topLevel x y)
  ; "    etalon", (fun x y z -> Etalon.topLevel x y)

  ; "  consPDLP", (fun x y z -> ConsLastPlain.topLevel y x)
  ; "originalLP", (fun x y z -> OriginalLastPlain.topLevel x y)
  ; "    ecceLP", (fun x y z -> EcceLastPlain.topLevel x y)

  ; "  consPDFP", (fun x y z -> ConsFirstPlain.topLevel y x)
  ; "originalFP", (fun x y z -> OriginalFirstPlain.topLevel x y)
  ; "    ecceFP", (fun x y z -> EcceFirstPlain.topLevel x y)

  ; "  consPDLN", (fun x y z -> ConsLastNando.topLevel y x)
  ; "originalLN", (fun x y z -> OriginalLastNando.topLevel x y)
  ; "    ecceLN", (fun x y z -> EcceLastNando.topLevel x y)

  ; "  consPDFN", (fun x y z -> ConsFirstNando.topLevel y x)
  ; "originalFN", (fun x y z -> OriginalFirstNando.topLevel x y)
  ; "    ecceFN", (fun x y z -> EcceFirstNando.topLevel x y)
  ]

let _ =
  let n = 1000 in
  let streams =
    List.map (fun (name, eval) ->
      ( String.trim name
      , run_with_unification_counter qrs (fun q r fm -> eval (ocanren {[q;r]}) fm two)
      )
    ) inputs in
  let converted_results =
    List.map (fun (name, stream) -> (name, convert_results n stream)) streams in
  compare_unification_counters converted_results;
  compute_average n (List.tl streams)

let runs =
  let iters = 10L in
  List.map (fun (num, vars, name) ->
    do_tables iters num (fun eval ->
      run q (fun fm -> fresh (q r s) (eval (vars q r s) fm two))) inputs name
  ) @@
  [
    (1000, (fun q r s -> ocanren {[q;r]}), "2v2d")
  ]


(* let _ =
  List.iter (fun (name, eval) ->
    run_formula_raw 500 name @@
    run_with_unification_counter qrs (fun q r fm -> eval (ocanren {[q;r]}) fm two)
  ) inputs *)


(*

(*
let goals =
  List.map
    ( fun (num, vars, name) ->
      ( num
      , (fun eval ->
          run qrst (fun q r s fm -> eval (vars q r s) fm two))
      , name
      )
    )
  [ (37  , (fun q r s -> ocanren {[q]}    ), "1v2d")
  ; (530 , (fun q r s -> ocanren {[q;r]}  ), "2v2d")
  (* ; (3015, (fun q r s -> ocanren {[q;r;s]}), "3v2d") *)
  ]

let mapped =
  List.map
    ( fun (num, goal, goalName) ->
      ( num
      , String.trim goalName
      , List.map
          ( fun (name, eval) ->
            (String.trim name, goal eval |> project_4th_var num)
          ) inputs
      )
    ) goals

let _ =
  make_report mapped *)


let goals =
  List.map
    ( fun (num, vars, name) ->
      ( num
      , (fun eval ->
          run qrst (fun q r s fm -> eval (vars q r s) fm two))
      , name
      )
    )
  [
    (* (500, (fun q r s -> ocanren {[q]}    ), "1v500") *)
    (500, (fun q r s -> ocanren {[q;r]}  ), "2v500")
  (* ; (1000, (fun q r s -> ocanren {[q;r;s]}), "3v1000") *)
  ]

let mapped =
  List.map
    ( fun (num, goal, goalName) ->
      ( num
      , String.trim goalName
      , List.map
          ( fun (name, eval) ->
          (* (String.trim name, goal eval |> project_4th_var num) *)
              (String.trim name, goal eval |> stream_4_vars_to_list num)
          ) (List.tl (List.tl inputs))
      )
    ) goals

let _ =
  make_report mapped

let runs =
  let iters = 4L in
  List.map (fun (num, vars, name) ->
    do_tables iters num (fun eval ->
      run q (fun fm -> fresh (q r s) (eval (vars q r s) fm two))) (List.tl (List.tl inputs)) name
  ) @@
  [
    (* (500 , (fun q r s -> ocanren {[q]}    ), "1v2d") *)
    (500 , (fun q r s -> ocanren {[q;r]}  ), "2v2d")
  (* ; (3015, (fun q r s -> ocanren {[q;r;s]}), "3v2d") *)
  ]

let _ =
  to_csv "res/fixed.csv" runs *)



let run_formula_with_unifs' n textRepr r =
  Printf.printf "-----------------------------\n%s\n" textRepr;
  List.iter (fun (us, (q, r, fm)) ->
                    Printf.printf "Unifs: %d\tO:\t%s\tS(O):\t%s\tFm:\t%s\n"
                                  us
                                  (var_to_string q)
                                  (var_to_string r)
                                  (var_to_string fm)
            ) @@
            RStream.take ~n:n @@ r (fun q r fm -> (q, r, fm))
(*
let run_formula_with_unifs n textRepr r =
  Printf.printf "-----------------------------\n%s\n" textRepr;
  List.iter (fun (q, r, fm) ->
                    Printf.printf "O:\t%s\tS(O):\t%s\tFm:\t%s\n"
                                  (var_to_string q)
                                  (var_to_string r)
                                  (var_to_string fm)
            ) @@
            RStream.take ~n:n @@ r (fun q r fm -> (q, r, fm)) *)
(* let _ =
  List.iter
    (fun (name, eval) ->
      run_formula_with_unifs' 10 name @@
      run_with_unification_counter qrs (fun r t fm -> eval (ocanren {[r;t]}) fm two)
    ) inputs *)