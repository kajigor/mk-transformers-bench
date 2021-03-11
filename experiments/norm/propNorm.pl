_evalo(Y2, Y3, Y4) :- _evalo(Y2, Q1, Q2), _rel_0(Y2, Y3, Y4, Q1, Q2).
_evalo(cons(Y4, Q4), var(o), Y4).
_evalo(cons(Q6, Q4), var(s(Q5)), Y4) :- elemo(Q4, Y4, Q5).
rel_0(Y5, neg(Y7), Y7, false).
rel_0(Y5, disj(Y7, Q1), Y7, true) :- _evalo(Y5, Q2, Q3), __rel_0(Y5, Q1, Q2, Q3).
rel_0(cons(false, Q5), disj(Y7, var(o)), Y7, true).
rel_0(cons(Q7, Q5), disj(Y7, var(s(Q6))), Y7, true) :- _elemo(Q5, Q6).
rel_0(Y5, disj(Y7, Q1), Y7, false) :- ___evalo(Y5, Q1).
rel_0(Y5, disj(Y7, Q1), Y7, true) :- ___evalo(Y5, Q1).
rel_0(Y5, conj(Y7, Q1), Y7, true) :- ___evalo(Y5, Q1).
_rel_0(Y11, neg(Y14), false, Y14, true).
_rel_0(Y11, neg(Y14), true, Y14, false).
_rel_0(Y11, Y12, Y13, Y14, Y16) :- _evalo(Y11, Q1, Q2), rel_1(Y12, Y13, Y14, Q1, Y16, Q2).
rel_1(conj(Y20, Y21), true, Y20, Y21, true, true).
rel_1(conj(Y20, Y21), false, Y20, Y21, false, true).
rel_1(conj(Y20, Y21), false, Y20, Y21, true, false).
rel_1(conj(Y20, Y21), false, Y20, Y21, false, false).
rel_1(disj(Y20, Y21), true, Y20, Y21, true, true).
rel_1(disj(Y20, Y21), true, Y20, Y21, false, true).
rel_1(disj(Y20, Y21), true, Y20, Y21, true, false).
rel_1(disj(Y20, Y21), false, Y20, Y21, false, false).
elemo(cons(Y25, Q1), Y25, o).
elemo(cons(Q3, Q1), Y25, s(Q2)) :- elemo(Q1, Y25, Q2).
__rel_0(Y27, neg(Y29), Y29, true).
__rel_0(Y27, disj(Y29, Q1), Y29, false) :- __evalo(Y27, Q1).
__rel_0(Y27, conj(Y29, Q1), Y29, false) :- __evalo(Y27, Q1).
__rel_0(Y27, conj(Y29, Q1), Y29, true) :- __evalo(Y27, Q1).
__rel_0(Y27, conj(Y29, Q1), Y29, false) :- ___evalo(Y27, Q1).
__evalo(Y33, Y34) :- _evalo(Y33, Q1, Q2), __rel_0(Y33, Y34, Q1, Q2).
__evalo(cons(false, Q4), var(o)).
__evalo(cons(Q6, Q4), var(s(Q5))) :- _elemo(Q4, Q5).
___evalo(Y35, Y36) :- _evalo(Y35, Q1, Q2), rel_0(Y35, Y36, Q1, Q2).
___evalo(cons(true, Q4), var(o)).
___evalo(cons(Q6, Q4), var(s(Q5))) :- __elemo(Q4, Q5).
_elemo(cons(false, Q1), o).
_elemo(cons(Q3, Q1), s(Q2)) :- _elemo(Q1, Q2).
__elemo(cons(true, Q1), o).
__elemo(cons(Q3, Q1), s(Q2)) :- __elemo(Q1, Q2).
