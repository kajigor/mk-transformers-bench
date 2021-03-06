open OCanren
open OCanren.Std
open Helper

let topLevel x0 x1 x2 =
  let rec check_uni y0 y1 y2 =
    fresh (q1 q2 q3 q4 q5 q6 q7 q8 q9 q10 q11 q12 q13 q14 q15)
      ( y1 === constr q1 q2
      &&& (y2 === constr q3 q4)
      &&& (eq_nat q1 q3 &&& forall2 y0 q2 q4)
      ||| (y1 === var_ q5 &&& (y2 === constr q6 q7) &&& (get_term y0 q5 q8 &&& check_uni y0 q8 (constr q6 q7)))
      ||| (y1 === constr q9 q10 &&& (y2 === var_ q11) &&& (get_term y0 q11 q12 &&& check_uni y0 (constr q9 q10) q12))
      ||| (y1 === var_ q13 &&& (y2 === var_ q14) &&& (get_term y0 q13 q15 &&& check_uni y0 q15 (var_ q14)))
      ||| (y1 === var_ q13 &&& (y2 === var_ q14) &&& get_termGet_termEq_nat y0 q13 q14) )
  and eq_nat y3 y4 = fresh (q1 q2) (y3 === Nat.zero &&& (y4 === Nat.zero) ||| (y3 === Nat.succ q1 &&& (y4 === Nat.succ q2) &&& eq_nat q1 q2))
  and forall2 y5 y6 y7 =
    fresh (q1 q2 q3 q4)
      ( y6 === List.nil ()
      &&& (y7 === List.nil ())
      ||| (y6 === ( % ) q1 q2 &&& (y7 === ( % ) q3 q4) &&& (check_uni y5 q1 q3 &&& forall2 y5 q2 q4)) )
  and get_term y8 y9 y10 =
    fresh (q1 q2 q3) (y8 === ( % ) (Option.some y10) q1 &&& (y9 === Nat.zero) ||| (y8 === ( % ) q2 q1 &&& (y9 === Nat.succ q3) &&& get_term q1 q3 y10))
  and get_termGet_termEq_nat y11 y12 y13 =
    fresh (q1 q2 q3)
      ( y11 === List.nil ()
      &&& get_termEq_nat y13 (List.nil ()) y12
      ||| (y11 === ( % ) (Option.none ()) q1 &&& (y12 === Nat.zero) &&& get_termEq_nat y13 (( % ) (Option.none ()) q1) Nat.zero)
      ||| (y11 === ( % ) q2 q1 &&& (y12 === Nat.succ q3) &&& (get_termEq_nat y13 (( % ) q2 q1) (Nat.succ q3) &&& _get_term q3 q1)) )
  and _get_term y14 y15 =
    fresh (q1 q2 q3)
      ( y15 === List.nil ()
      ||| (y15 === ( % ) (Option.none ()) q1 &&& (y14 === Nat.zero))
      ||| (y15 === ( % ) q2 q1 &&& (y14 === Nat.succ q3) &&& _get_term q3 q1) )
  and get_termEq_nat y16 y17 y18 =
    fresh (q1 q2 q3)
      ( y17 === List.nil () &&& eq_nat y18 y16
      ||| (y17 === ( % ) (Option.none ()) q1 &&& (y16 === Nat.zero) &&& eq_nat y18 Nat.zero)
      ||| (y17 === ( % ) q2 q1 &&& (y16 === Nat.succ q3) &&& (_get_term q3 q1 &&& eq_nat y18 (Nat.succ q3))) )
  in
  check_uni x0 x1 x2