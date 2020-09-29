open GT
open OCanren
open OCanren.Std
open Helper

let topLevel x0 x1 x2 x3 = let rec type y0 y1 y2 y3 = (fresh (x12 x11 x10 x9 x13 x8 x7 x16 x15 x14 x6) (((success ()) &&& ((((y0 === var x6) &&& ((((x6 === Std.Nat.zero) &&& (y1 === (Std.(%) x14 x15))) &&& (x14 === arrow y2 y3)) ||| (((x6 === (Std.Nat.succ (x16))) &&& (y1 === (Std.(%) x14 x15))) &&& (elemo x15 y2 y3 x16)))) ||| (((y0 === abs x6 x7 x8) &&& (x13 === (Std.(%) (Pair.pair (x6) (x7)) y1))) &&& (_type x8 ((Std.(%) (Pair.pair (x6) (x7)) y1)) y2 y3))) ||| ((y0 === app x9 x10) &&& (((success ()) &&& (_type x9 y1 x11 x12)) &&& ((success ()) &&& (__type y1 x10 x12)))))))) and elemo y4 y5 y6 y7 = (fresh (x16 x15 x14 x0) (((x0 === var y7) &&& ((((y7 === Std.Nat.zero) &&& (y4 === (Std.(%) x14 x15))) &&& (x14 === arrow y5 y6)) ||| (((y7 === (Std.Nat.succ (x16))) &&& (y4 === (Std.(%) x14 x15))) &&& (elemo x15 y5 y6 x16)))))) and _type y8 y9 y10 y11 = (fresh (x12 x11 x10 x9 x13 x8 x7 x16 x15 x14 x6) (((success ()) &&& ((((y8 === var x6) &&& ((((x6 === Std.Nat.zero) &&& (y9 === (Std.(%) x14 x15))) &&& (x14 === arrow y10 y11)) ||| (((x6 === (Std.Nat.succ (x16))) &&& (y9 === (Std.(%) x14 x15))) &&& (elemo x15 y10 y11 x16)))) ||| (((y8 === abs x6 x7 x8) &&& (x13 === (Std.(%) (Pair.pair (x6) (x7)) y9))) &&& (_type x8 ((Std.(%) (Pair.pair (x6) (x7)) y9)) y10 y11))) ||| ((y8 === app x9 x10) &&& (((success ()) &&& (_type x9 y9 x11 x12)) &&& ((success ()) &&& (__type y9 x10 x12)))))))) and __type y12 y13 y14 = (fresh (x25 x24 x23 x22 x26 x21 x20 x29 x28 x27 x19 x18 x17 x9 x0) (((x0 === app x9 y13) &&& ((((((y13 === bConst x17) &&& (y14 === boolean ())) ||| ((y13 === iConst x18) &&& (y14 === integer ()))) ||| ((y13 === var x19) &&& ((((x19 === Std.Nat.zero) &&& (y12 === (Std.(%) x27 x28))) &&& (y14 === x27)) ||| (((x19 === (Std.Nat.succ (x29))) &&& (y12 === (Std.(%) x27 x28))) &&& (_elemo x28 y14 x29))))) ||| (((y13 === abs x19 x20 x21) &&& (x26 === (Std.(%) (Pair.pair (x19) (x20)) y12))) &&& (__type ((Std.(%) (Pair.pair (x19) (x20)) y12)) x21 y14))) ||| ((y13 === app x22 x23) &&& (typeType y12 x22 x23 x24 x25)))))) and _elemo y15 y16 y17 = (fresh (x29 x28 x27 x10 x9 x0) ((((x0 === app x9 x10) &&& (x10 === var y17)) &&& ((((y17 === Std.Nat.zero) &&& (y15 === (Std.(%) x27 x28))) &&& (y16 === x27)) ||| (((y17 === (Std.Nat.succ (x29))) &&& (y15 === (Std.(%) x27 x28))) &&& (_elemo x28 y16 x29)))))) and typeType y18 y19 y20 y21 y22 = (fresh (x0) (((x0 === app y19 y20) &&& (((success ()) &&& (_type y19 y18 y21 y22)) &&& ((success ()) &&& (__type y18 y20 y22)))))) in       (_type x0 x1 x2 x3)
