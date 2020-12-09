open OCanren
open GT
open Helper

let two = Std.Nat.succ (Std.Nat.succ Std.Nat.zero)

let inputs =
  [ " originalLimited", OriginalLastPlainLimited.topLevel
  ; "   etalonLimited", EtalonLastPlainLimited.topLevel
  ; "          consPD", (fun x y z -> ConsPropLastPlain.topLevel y x)
  ; "        original", (fun x y z -> OriginalLastPlain.topLevel x y)
  ; "          etalon", (fun x y z -> EtalonLastPlain.topLevel x y)
  ; "         perfect", (fun x y z -> PerfectLastPlain.topLevel x y)
  ; "           geoff", (fun x y z -> Geoff_originalLastPlain.topLevel x y)
  ; "            ecce", (fun x y z -> EcceLastPlain.topLevel x y)
  (* ; "     etalonExtra", (fun x y z -> EtalonLastPlainExtra.topLevel x y) *)
  ]

let _ =
  let converted_results =
    List.map (fun (name, eval) ->
      ( name
      , convert_results 500
        @@ run_with_unification_counter qrs (fun q r fm -> eval (ocanren {[q;r]}) fm two)
      )
    ) inputs in
  compare_unification_counters converted_results

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

let xoro x y z =
  ((x === y) &&& (z === !!false)) |||
  ((x === !!true)  &&& ((y === !!false) &&& (z === !!true)))

let _ =
  run_formula_with_unifs' 2 "xoro r t fm" @@
  run_with_unification_counter qrs (fun r t fm -> xoro r t fm )


(* let _ =
  List.iter
    (fun (name, eval) ->
      run_formula_with_unifs' 10 name @@
      run_with_unification_counter qrs (fun r t fm -> eval (ocanren {[r;t]}) fm two)
    ) inputs *)