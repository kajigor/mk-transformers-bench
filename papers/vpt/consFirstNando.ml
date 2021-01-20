open GT
open OCanren
open OCanren.Std
open Helper

let topLevel x0 x1 = 
  let rec _evalo y2 y3 = (fresh (q1 q2 q3 q4 q5 q6) ((((y2 === (conj q1 q2)) &&& (___evaloEvalo y3 q1 q2)) ||| (((y2 === (disj q1 q2)) &&& (((__evalo y3 q1) &&& (_evalo q2 y3)) ||| ((__evaloEvalo y3 q1 q2) ||| (___evaloEvalo y3 q1 q2)))) ||| (((y2 === (neg q1)) &&& (__evalo y3 q1)) ||| ((y2 === (var q3)) &&& (((q3 === Nat.zero) &&& (y3 === (!!true % q4))) ||| (((q3 === (Nat.succ q5)) &&& (y3 === (q6 % q4))) &&& (_elemo q4 q5))))))))) 
  and __evalo y4 y5 = (fresh (q1 q2 q3 q4 q5 q6) ((((y5 === (conj q1 q2)) &&& ((_evaloEvalo y4 q1 q2) ||| ((evaloEvalo y4 q1 q2) ||| ((_evalo q1 y4) &&& (__evalo y4 q2))))) ||| (((y5 === (disj q1 q2)) &&& (_evaloEvalo y4 q1 q2)) ||| (((y5 === (neg q1)) &&& (_evalo q1 y4)) ||| ((y5 === (var q3)) &&& (((q3 === Nat.zero) &&& (y4 === (!!false % q4))) ||| (((q3 === (Nat.succ q5)) &&& (y4 === (q6 % q4))) &&& (elemo q4 q5))))))))) 
  and evaloEvalo y6 y7 y8 = ((__evalo y6 y7) &&& (_evalo y8 y6)) 
  and _evaloEvalo y9 y10 y11 = ((__evalo y9 y10) &&& (__evalo y9 y11)) 
  and elemo y12 y13 = (fresh (q1 q2 q3) ((((y13 === Nat.zero) &&& (y12 === (!!false % q1))) ||| (((y13 === (Nat.succ q2)) &&& (y12 === (q3 % q1))) &&& (elemo q1 q2))))) 
  and __evaloEvalo y14 y15 y16 = ((_evalo y15 y14) &&& (__evalo y14 y16)) 
  and ___evaloEvalo y17 y18 y19 = ((_evalo y18 y17) &&& (_evalo y19 y17)) 
  and _elemo y20 y21 = (fresh (q1 q2 q3) ((((y21 === Nat.zero) &&& (y20 === (!!true % q1))) ||| (((y21 === (Nat.succ q2)) &&& (y20 === (q3 % q1))) &&& (_elemo q1 q2))))) 
  in         (_evalo x0 x1)
