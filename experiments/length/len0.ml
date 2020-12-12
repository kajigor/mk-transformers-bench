open GT
open OCanren
open OCanren.Std
open Helper

(*
len xs l =
  xs == [] && l == 0 |||
  xs == h : t && l == m + 1 && len t m
*)
let topLevel y1 y2 =
  let rec len xs l =
    (((xs === (List.nil ())) &&& (l === Nat.zero)) |||
    (fresh (m t h)
      (((xs === (h % t)) &&&
       ((l === (Nat.succ m)) &&&
       (len t m))))))
  in  (len y1 y2)
