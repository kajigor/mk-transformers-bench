open OCanren
open GT
open Helper

let two = Std.Nat.succ (Std.Nat.succ Std.Nat.zero)

let inputs =
  [ ("len0", Len0.topLevel)
  ; ("len1", Len1.topLevel)
  ; ("len2", Len2.topLevel)
  ; ("len3", Len3.topLevel)
  ]

let lists =
  [
    (* ("20",   ocanren{[0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0]}) *)
       ("5",   ocanren{[0;0;0;0;0]})
  (* ; ("40",   ocanren{[0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;
                      0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0]})
  ; ("60",   ocanren{[0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;
                      0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;
                      0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0]})
  ; ("80",   ocanren{[0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;
                      0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;
                      0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;
                      0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0]}) *)
  (* ; ("200",  ocanren{[0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;
                      0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;
                      0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;
                      0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;
                      0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;
                      0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;
                      0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;
                      0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;
                      0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;
                      0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0]}) *)
  ]

let _ =
  List.iter (fun (str, lst) ->
    Printf.printf "\n\n=============================\n%s\n" str;
    List.iter (fun (name, eval) ->
      run_length' 1 name @@
      run_with_unification_counter q (fun q -> eval lst q);
      (* run_time 1 name @@
      run q (fun q -> eval lst q) *)
    ) inputs
  )
  lists
