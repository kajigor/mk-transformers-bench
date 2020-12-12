open GT
open OCanren
open OCanren.Std
open Helper

(*
len xs l =
  xs == h : t && len t m && l == m + 1 |||
  xs == [] && l == 0
*)
let topLevel y1 y2 =
  let rec len xs l =
    ( (fresh (m t h)
       (((xs === (h % t)) &&&
         ((len t m) &&&
         (l === (Nat.succ m)))))) |||
      ((xs === (List.nil ())) &&& (l === Nat.zero))
    )
  in  (len y1 y2)
