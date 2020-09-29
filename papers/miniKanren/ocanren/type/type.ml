open GT
open OCanren
open OCanren.Std
open Helper

let topLevel x0 x1 x2 x3 = let rec elemo y4 y5 y6 y7 = (fresh (q1 q2 q3) ((((y7 === Std.Nat.zero) &&& (y4 === (Std.(%) arrow y5 y6 q1))) ||| (((y7 === (Std.Nat.succ (q2))) &&& (y4 === (Std.(%) q3 q1))) &&& (elemo q1 y5 y6 q2))))) and _type y8 y9 y10 y11 = (fresh (q1 q2 q3 q4 q5 q6 q7 q8 q9 q10) (((((y8 === var q1) &&& (((q1 === Std.Nat.zero) &&& (y9 === (Std.(%) arrow y10 y11 q2))) ||| (((q1 === (Std.Nat.succ (q3))) &&& (y9 === (Std.(%) q4 q2))) &&& (elemo q2 y10 y11 q3)))) ||| ((y8 === abs q1 q5 q6) &&& (_type q6 ((Std.(%) (Pair.pair (q1) (q5)) y9)) y10 y11))) ||| ((y8 === app q7 q8) &&& ((_type q7 y9 q9 q10) &&& (__type y9 q8 q10)))))) and __type y12 y13 y14 = (fresh (q1 q2 q3 q4 q5 q6 q7 q8 q9 q10) (((((((y13 === bConst q1) &&& (y14 === boolean ())) ||| ((y13 === iConst q2) &&& (y14 === integer ()))) ||| ((y13 === var q3) &&& (((q3 === Std.Nat.zero) &&& (y12 === (Std.(%) y14 q4))) ||| (((q3 === (Std.Nat.succ (q5))) &&& (y12 === (Std.(%) q6 q4))) &&& (_elemo q4 y14 q5))))) ||| ((y13 === abs q3 q7 q8) &&& (__type ((Std.(%) (Pair.pair (q3) (q7)) y12)) q8 y14))) ||| ((y13 === app q9 q10) &&& (typeType y12 q9 q10))))) and _elemo y15 y16 y17 = (fresh (q1 q2 q3) ((((y17 === Std.Nat.zero) &&& (y15 === (Std.(%) y16 q1))) ||| (((y17 === (Std.Nat.succ (q2))) &&& (y15 === (Std.(%) q3 q1))) &&& (_elemo q1 y16 q2))))) and typeType y18 y19 y20 = (fresh (q1 q2) (((_type y19 y18 q1 q2) &&& (__type y18 y20 q2)))) in      (_type x0 x1 x2 x3)