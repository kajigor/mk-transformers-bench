open GT
open OCanren
open OCanren.Std
open Helper

let topLevel x0 x1 x2 =
  let rec maxLengtho y0 y1 y2 = maxo y0 y1 &&& lengtho y0 y2
  and maxo y3 y4 =
    fresh (q1 q2 q3 q4 q5 q6 q7 q8 q9)
      ( y3 === Std.List.nil () &&& (y4 === Std.Nat.zero)
      ||| (y3 === Std.( % ) q1 q2 &&& (leo q1 &&& maxo1 q2 y4))
      ||| ( y3 === Std.( % ) q3 q4
          &&& ( q3 === Std.Nat.succ q5
              &&& (q4 === Std.List.nil ())
              &&& (y4 === Std.Nat.succ q5)
              ||| (q3 === Std.Nat.succ q5 &&& (q4 === Std.( % ) q6 q7) &&& (_leo q5 q6 &&& _maxo1 y4 q7 q5))
              ||| (q3 === Std.Nat.succ q5 &&& (q4 === Std.( % ) q8 q9) &&& (gto q5 q8 &&& __maxo1 y4 q8 q9)) ) ) )
  and lengtho y5 y6 =
    fresh (q1 q2 q3) (y5 === Std.List.nil () &&& (y6 === Std.Nat.zero) ||| (y5 === Std.( % ) q1 q2 &&& (y6 === Std.Nat.succ q3) &&& lengtho q2 q3))
  and leo y7 = y7 === Std.Nat.zero
  and maxo1 y8 y9 =
    fresh (q1 q2 q3 q4 q5 q6 q7 q8 q9)
      ( y8 === Std.List.nil () &&& (y9 === Std.Nat.zero)
      ||| (y8 === Std.( % ) q1 q2 &&& (leo q1 &&& maxo1 q2 y9))
      ||| ( y8 === Std.( % ) q3 q4
          &&& ( q3 === Std.Nat.succ q5
              &&& (q4 === Std.List.nil ())
              &&& (y9 === Std.Nat.succ q5)
              ||| (q3 === Std.Nat.succ q5 &&& (q4 === Std.( % ) q6 q7) &&& (_leo q5 q6 &&& _maxo1 y9 q7 q5))
              ||| (q3 === Std.Nat.succ q5 &&& (q4 === Std.( % ) q8 q9) &&& (gto q5 q8 &&& __maxo1 y9 q8 q9)) ) ) )
  and _leo y10 y11 =
    fresh (q1 q2 q3)
      (y11 === Std.Nat.zero ||| (y11 === Std.Nat.succ q1 &&& (q1 === Std.Nat.zero ||| (q1 === Std.Nat.succ q2 &&& (y10 === Std.Nat.succ q3) &&& __leo q2 q3))))
  and __leo y12 y13 = fresh (q1 q2) (y12 === Std.Nat.zero ||| (y12 === Std.Nat.succ q1 &&& (y13 === Std.Nat.succ q2) &&& __leo q1 q2))
  and _maxo1 y14 y15 y16 =
    fresh (q1 q2 q3 q4)
      ( y15 === Std.List.nil ()
      &&& (y14 === Std.Nat.succ y16)
      ||| (y15 === Std.( % ) q1 q2 &&& (_leo y16 q1 &&& _maxo1 y14 q2 y16))
      ||| (y15 === Std.( % ) q3 q4 &&& (gto y16 q3 &&& __maxo1 y14 q3 q4)) )
  and gto y17 y18 =
    fresh (q1 q2 q3 q4)
      ( y18 === Std.Nat.succ q1
      &&& (q1 === Std.Nat.succ q2 &&& (y17 === Std.Nat.zero) ||| (q1 === Std.Nat.succ q3 &&& (y17 === Std.Nat.succ q4) &&& _gto q3 q4)) )
  and __maxo1 y19 y20 y21 =
    fresh (q1 q2 q3 q4)
      ( y21 === Std.List.nil () &&& (y19 === y20)
      ||| (y21 === Std.( % ) q1 q2 &&& (__leo q1 y20 &&& __maxo1 y19 y20 q2))
      ||| (y21 === Std.( % ) q3 q4 &&& (_gto q3 y20 &&& __maxo1 y19 q3 q4)) )
  and _gto y22 y23 =
    fresh (q1 q2 q3) (y22 === Std.Nat.succ q1 &&& (y23 === Std.Nat.zero) ||| (y22 === Std.Nat.succ q2 &&& (y23 === Std.Nat.succ q3) &&& _gto q2 q3))
  in
  maxLengtho x0 x1 x2
