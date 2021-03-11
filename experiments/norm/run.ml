open OCanren
open GT
open Helper

let two = Std.Nat.succ (Std.Nat.succ Std.Nat.zero)

let inputs =
  [ "propNormOriginal", PropNormOriginal.topLevel
  ; "propNorm",         PropNorm.topLevel
  ; "propOriginal",     PropOriginal.topLevel
  ; "prop",             Prop.topLevel
  ]

let _ =
  let converted_results =
    List.map (fun (name, eval) ->
      ( name
      , convert_results 500
        @@ run_with_unification_counter qrs (fun q r fm -> eval (ocanren {[q;r]}) fm)
      )
    ) inputs in
  compare_unification_counters converted_results


let runs =
  let iters = 4L in
  List.map (fun (num, vars, name) ->
    do_tables iters num (fun eval ->
      run q (fun fm -> fresh (q r s) (eval (vars q r s) fm))) inputs name
  ) @@
  [
    (2000, (fun q r s -> ocanren {[q;r]}  ), "2v2d")
  ]

let _ =
  to_csv "res/fixed.csv" runs
