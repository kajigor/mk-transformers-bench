open GT
open OCanren
open OCanren.Std
open Helper

let topLevel x0 x1 = 
  let rec _evalo y2 y3 y4 = (fresh (q1 q2 q3 q4 q5 q6) ((((_evalo y2 q1 q2) &&& (_rel_0 y2 y3 y4 q1 q2)) ||| ((y3 === (var q3)) &&& (((q3 === Nat.zero) &&& (y2 === (y4 % q4))) ||| (((q3 === (Nat.succ q5)) &&& (y2 === (q6 % q4))) &&& (elemo q4 y4 q5))))))) 
  and rel_0 y5 y6 y7 y9 = (fresh (q1 q2 q3 q4 q5 q6 q7) ((((y6 === (neg y7)) &&& (y9 === !!false)) ||| ((((y9 === !!true) &&& (y6 === (disj y7 q1))) &&& (((_evalo y5 q2 q3) &&& (__rel_0 y5 q1 q2 q3)) ||| ((q1 === (var q4)) &&& (((q4 === Nat.zero) &&& (y5 === (!!false % q5))) ||| (((q4 === (Nat.succ q6)) &&& (y5 === (q7 % q5))) &&& (_elemo q5 q6)))))) ||| ((((y9 === !!false) &&& (y6 === (disj y7 q1))) &&& (___evalo y5 q1)) ||| ((((y9 === !!true) &&& (y6 === (disj y7 q1))) &&& (___evalo y5 q1)) ||| (((y9 === !!true) &&& (y6 === (conj y7 q1))) &&& (___evalo y5 q1)))))))) 
  and _rel_0 y11 y12 y13 y14 y16 = (fresh (q1 q2) ((((y12 === (neg y14)) &&& (((y16 === !!true) &&& (y13 === !!false)) ||| ((y16 === !!false) &&& (y13 === !!true)))) ||| ((_evalo y11 q1 q2) &&& (rel_1 y12 y13 y14 q1 y16 q2))))) 
  and rel_1 y18 y19 y20 y21 y22 y23 = (((y18 === (conj y20 y21)) &&& (((y23 === !!true) &&& ((y22 === !!true) &&& (y19 === !!true))) ||| (((y23 === !!true) &&& ((y22 === !!false) &&& (y19 === !!false))) ||| (((y23 === !!false) &&& ((y22 === !!true) &&& (y19 === !!false))) ||| ((y23 === !!false) &&& ((y22 === !!false) &&& (y19 === !!false))))))) ||| ((y18 === (disj y20 y21)) &&& (((y23 === !!true) &&& ((y22 === !!true) &&& (y19 === !!true))) ||| (((y23 === !!true) &&& ((y22 === !!false) &&& (y19 === !!true))) ||| (((y23 === !!false) &&& ((y22 === !!true) &&& (y19 === !!true))) ||| ((y23 === !!false) &&& ((y22 === !!false) &&& (y19 === !!false)))))))) 
  and elemo y24 y25 y26 = (fresh (q1 q2 q3) ((((y26 === Nat.zero) &&& (y24 === (y25 % q1))) ||| (((y26 === (Nat.succ q2)) &&& (y24 === (q3 % q1))) &&& (elemo q1 y25 q2))))) 
  and __rel_0 y27 y28 y29 y31 = (fresh (q1) ((((y28 === (neg y29)) &&& (y31 === !!true)) ||| ((((y31 === !!false) &&& (y28 === (disj y29 q1))) &&& (__evalo y27 q1)) ||| ((((y31 === !!false) &&& (y28 === (conj y29 q1))) &&& (__evalo y27 q1)) ||| ((((y31 === !!true) &&& (y28 === (conj y29 q1))) &&& (__evalo y27 q1)) ||| (((y31 === !!false) &&& (y28 === (conj y29 q1))) &&& (___evalo y27 q1)))))))) 
  and __evalo y33 y34 = (fresh (q1 q2 q3 q4 q5 q6) ((((_evalo y33 q1 q2) &&& (__rel_0 y33 y34 q1 q2)) ||| ((y34 === (var q3)) &&& (((q3 === Nat.zero) &&& (y33 === (!!false % q4))) ||| (((q3 === (Nat.succ q5)) &&& (y33 === (q6 % q4))) &&& (_elemo q4 q5))))))) 
  and ___evalo y35 y36 = (fresh (q1 q2 q3 q4 q5 q6) ((((_evalo y35 q1 q2) &&& (rel_0 y35 y36 q1 q2)) ||| ((y36 === (var q3)) &&& (((q3 === Nat.zero) &&& (y35 === (!!true % q4))) ||| (((q3 === (Nat.succ q5)) &&& (y35 === (q6 % q4))) &&& (__elemo q4 q5))))))) 
  and _elemo y37 y38 = (fresh (q1 q2 q3) ((((y38 === Nat.zero) &&& (y37 === (!!false % q1))) ||| (((y38 === (Nat.succ q2)) &&& (y37 === (q3 % q1))) &&& (_elemo q1 q2))))) 
  and __elemo y39 y40 = (fresh (q1 q2 q3) ((((y40 === Nat.zero) &&& (y39 === (!!true % q1))) ||| (((y40 === (Nat.succ q2)) &&& (y39 === (q3 % q1))) &&& (__elemo q1 q2))))) 
  in           (___evalo x0 x1)
