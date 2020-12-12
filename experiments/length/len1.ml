open GT
open OCanren
open OCanren.Std
open Helper

(*
len xs l =
  xs == [] && l == 0 |||
  xs == h : t && len t m && l == m + 1
*)
let topLevel y1 y2 =
  let rec len xs l =
    (((xs === (List.nil ())) &&& (l === Nat.zero)) |||
    (fresh (m t h)
      (((xs === (h % t)) &&&
       ((len t m) &&&
       (l === (Nat.succ m)))))))
  in  (len y1 y2)
