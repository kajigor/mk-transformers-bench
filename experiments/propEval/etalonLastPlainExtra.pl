evaloT(St, conj(X, Y)) :- evaloT(St, X), evaloT(St, Y), stub(o, o).
evaloT(St, disj(X, Y)) :- evaloT(St, X), evaloT(St, Y), stub(o, o).
evaloT(St, disj(X, Y)) :- evaloT(St, X), evaloF(St, Y), stub(o, o).
evaloT(St, disj(X, Y)) :- evaloF(St, X), evaloT(St, Y), stub(o, o).
evaloT(St, neg(X)) :- evaloF(St, X), stub(o,o).
evaloT(St, var(Z)) :- elemoT(St, Z).

evaloF(St, conj(X, Y)) :- evaloF(St, X), evaloF(St, Y),stub(o,o).
evaloF(St, conj(X, Y)) :- evaloT(St, X), evaloF(St, Y),stub(o,o).
evaloF(St, conj(X, Y)) :- evaloF(St, X), evaloT(St, Y),stub(o,o).
evaloF(St, disj(X, Y)) :- evaloF(St, X), evaloF(St, Y),stub(o,o).
evaloF(St, neg(X)) :- evaloT(St, X), stub(o,o).
evaloF(St, var(Z)) :- elemoF(St, Z).

stub(X,X).

elemoT(cons(true, Q1), o).
elemoT(cons(Q3, Q1), s(Q2)) :- elemoT(Q1, Q2).

elemoF(cons(false, Q1), o).
elemoF(cons(Q3, Q1), s(Q2)) :- elemoF(Q1, Q2).


