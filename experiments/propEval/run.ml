open OCanren
open GT
open Helper

let two = Std.Nat.succ (Std.Nat.succ Std.Nat.zero)

let inputs =
  [ " originalLimited", OriginalLastPlainLimited.topLevel
  ; "   etalonLimited", EtalonLastPlainLimited.topLevel
  ; "        original", (fun x y z -> OriginalLastPlain.topLevel x y)
  ; "          etalon", (fun x y z -> EtalonLastPlain.topLevel x y)
  ; "         perfect", (fun x y z -> PerfectLastPlain.topLevel x y)
  (* ; "     etalonExtra", (fun x y z -> EtalonLastPlainExtra.topLevel x y) *)
  ]

(* let _ =
  run_formula 50 "Tmp" @@
  run qrst (fun q r s fm -> OriginalLastPlainLimited.topLevel (ocanren {[q]}) fm two) *)

(* let goals =
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
  ; (500, (fun q r s -> ocanren {[q;r]}  ), "2v500")
  (* ; (1000, (fun q r s -> ocanren {[q;r;s]}), "3v1000") *)
  ]

let mapped =
  List.map
    ( fun (num, goal, goalName) ->
      ( num
      , String.trim goalName
      , List.map
          ( fun (name, eval) ->
            (String.trim name, goal eval |> project_4th_var num)
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
  ; (500 , (fun q r s -> ocanren {[q;r]}  ), "2v2d")
  (* ; (3015, (fun q r s -> ocanren {[q;r;s]}), "3v2d") *)
  ]

let _ =
  to_csv "res/fixed.csv" runs
