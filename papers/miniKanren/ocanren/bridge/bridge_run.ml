open GT

open OCanren
open OCanren.Std
open Tester

open Helper
open Bridge

(*************************************************)

let show_person = function
 | A -> "A"
 | B -> "B"
 | C -> "C"
 | D -> "D"

let show_step f = function
 | One x     -> f x
 | Two (x,y) -> Printf.sprintf "(%s, %s)" (f x) (f y)

let myshow x = show List.ground (show_step show_person) x

(*************************************************)

let rec int2nat i = if i = 0 then o () else s @@ int2nat @@ i - 1

(** For high order conversion **)
let getAnswer q t r = getAnswer ((===) q) t r

let _ =
  run_exn myshow (1) q qh ("answers", fun q ->
    getAnswer q standartTimes (int2nat 17 |> some)
  )

let _ =
  run_exn myshow (1) q qh ("answers", fun q ->
    Original.topLevel q (int2nat 17)
  )

(* let _ =
  run_exn myshow (1) q qh ("answers", fun q ->
    Ecce.topLevel q (int2nat 17)
  ) *)
