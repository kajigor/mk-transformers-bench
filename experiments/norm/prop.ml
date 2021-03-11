open GT
open OCanren
open OCanren.Std
open Helper

let topLevel x0 x1 = 
  let rec _evalo y2 y3 = (fresh (q1 q2 q3 q4 q5 q6) ((((y3 === (conj q1 q2)) &&& (___evaloEvalo y2 q1 q2)) ||| (((y3 === (disj q1 q2)) &&& ((evaloEvalo y2 q1 q2) ||| (((__evalo y2 q1) &&& (_evalo y2 q2)) ||| (___evaloEvalo y2 q1 q2)))) ||| (((y3 === (neg q1)) &&& (__evalo y2 q1)) ||| ((y3 === (var q3)) &&& (((q3 === Nat.zero) &&& (y2 === (!!true % q4))) ||| (((q3 === (Nat.succ q5)) &&& (y2 === (q6 % q4))) &&& (_elemo q4 q5))))))))) 
  and evaloEvalo y4 y5 y6 = ((_evalo y4 y5) &&& (__evalo y4 y6)) 
  and __evalo y7 y8 = (fresh (q1 q2 q3 q4 q5 q6) ((((y8 === (conj q1 q2)) &&& ((__evaloEvalo y7 q1 q2) ||| (((_evalo y7 q1) &&& (__evalo y7 q2)) ||| (_evaloEvalo y7 q1 q2)))) ||| (((y8 === (disj q1 q2)) &&& (__evaloEvalo y7 q1 q2)) ||| (((y8 === (neg q1)) &&& (_evalo y7 q1)) ||| ((y8 === (var q3)) &&& (((q3 === Nat.zero) &&& (y7 === (!!false % q4))) ||| (((q3 === (Nat.succ q5)) &&& (y7 === (q6 % q4))) &&& (elemo q4 q5))))))))) 
  and _evaloEvalo y9 y10 y11 = ((__evalo y9 y10) &&& (_evalo y9 y11)) 
  and __evaloEvalo y12 y13 y14 = ((__evalo y12 y13) &&& (__evalo y12 y14)) 
  and elemo y15 y16 = (fresh (q1 q2 q3) ((((y16 === Nat.zero) &&& (y15 === (!!false % q1))) ||| (((y16 === (Nat.succ q2)) &&& (y15 === (q3 % q1))) &&& (elemo q1 q2))))) 
  and ___evaloEvalo y17 y18 y19 = ((_evalo y17 y18) &&& (_evalo y17 y19)) 
  and _elemo y20 y21 = (fresh (q1 q2 q3) ((((y21 === Nat.zero) &&& (y20 === (!!true % q1))) ||| (((y21 === (Nat.succ q2)) &&& (y20 === (q3 % q1))) &&& (_elemo q1 q2))))) 
  in         (_evalo x0 x1)
