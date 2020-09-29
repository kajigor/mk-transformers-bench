open GT
open OCanren
open OCanren.Std
open Helper

let topLevel x0 x1 x2 =
let rec eq_nat a b q36 = (fresh (q37) (((q37 === (Pair.pair (a) (b))) &&& (((q37 === (Pair.pair (Nat.zero) (Nat.zero))) &&& (q36 === !!true)) ||| ((fresh (q39) (((q37 === (Pair.pair ((Std.Nat.succ (q39))) (Nat.zero))) &&& (q36 === !!false)))) ||| ((fresh (q41) (((q37 === (Pair.pair (Nat.zero) ((Std.Nat.succ (q41))))) &&& (q36 === !!false)))) ||| (fresh (y x) (((q37 === (Pair.pair ((Std.Nat.succ (x))) ((Std.Nat.succ (y))))) &&& (eq_nat x y q36))))))))))
and get_term var subst q32 = (((subst === (Std.List.nil ())) &&& (q32 === (Option.none ()))) ||| (fresh (xs x) (((subst === (Std.(%) (x) (xs))) &&& (((var === Nat.zero) &&& (x === q32)) ||| (fresh (n) (((var === (Std.Nat.succ (n))) &&& (get_term n xs q32)))))))))
and check_uni subst t1 t2 q31 = (fresh (q11) (((q11 === (Pair.pair (t1) (t2))) &&& ((fresh (q13 q12 a2 n2 a1 n1) (((q11 === (Pair.pair (constr n1 a1) (constr n2 a2))) &&& ((eq_nat n1 n2 q12) &&& ((forall2 subst a1 a2 q13) &&& (((q12 === !!false) &&& (q31 === !!false)) ||| ((q12 === !!true) &&& (q31 === q13)))))))) ||| ((fresh (q19 a n v) (((q11 === (Pair.pair (var_ v) (constr n a))) &&& ((get_term v subst q19) &&& (((q19 === (Option.none ())) &&& (q31 === !!false)) ||| (fresh (t) (((q19 === (Option.some (t))) &&& (check_uni subst t t2 q31))))))))) ||| ((fresh (q22 v a n) (((q11 === (Pair.pair (constr n a) (var_ v))) &&& ((get_term v subst q22) &&& (((q22 === (Option.none ())) &&& (q31 === !!false)) ||| (fresh (t) (((q22 === (Option.some (t))) &&& (check_uni subst t1 t q31))))))))) ||| (fresh (q25 v2 v1) (((q11 === (Pair.pair (var_ v1) (var_ v2))) &&& ((get_term v1 subst q25) &&& ((fresh (t1') (((q25 === (Option.some (t1'))) &&& (check_uni subst t1' t2 q31)))) ||| (fresh (q27) (((q25 === (Option.none ())) &&& ((get_term v2 subst q27) &&& ((fresh (q28) (((q27 === (Option.some (q28))) &&& (q31 === !!false)))) ||| ((q27 === (Option.none ())) &&& (eq_nat v1 v2 q31))))))))))))))))))
and forall2 subst l1 l2 q0 = (fresh (q1) (((q1 === (Pair.pair (l1) (l2))) &&& (((q1 === (Pair.pair ((Std.List.nil ())) ((Std.List.nil ())))) &&& (q0 === !!true)) ||| (fresh (q4 q3 ys y xs x) (((q1 === (Pair.pair ((Std.(%) (x) (xs))) ((Std.(%) (y) (ys))))) &&& ((check_uni subst x y q3) &&& ((forall2 subst xs ys q4) &&& (((q3 === !!false) &&& (q0 === !!false)) ||| ((q3 === !!true) &&& (q0 === q4))))))))))))
in            ((check_uni  x0 x1 x2 !!true))
