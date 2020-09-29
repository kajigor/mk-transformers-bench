tlBigBridge(A, B) :- result(B), getAnswer(A, some(B)).
result(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(o)))))))))))))))))).
getAnswer(Answer, Q26) :- start(Q22), getAnswer_0(Answer, Q22, Q26).
start(st(true, true, true, true, true)).
getAnswer_0(cons(X, Xs), State, none) :- checkStep(State, X, true), step(State, X, Q13), getAnswer_0(Xs, Q13, none).
getAnswer_0(cons(X, Xs), State, some(Q9)) :- checkStep(State, X, true), step(State, X, Q13), getAnswer_0(Xs, Q13, some(T1)), getTime(X, Q11), add(Q11, T1, Q9).
getAnswer_0(cons(X, Xs), State, none) :- checkStep(State, X, false).
getAnswer_0(nil, State, some(o)) :- finish(Q20), eqForState(State, Q20, true).
getAnswer_0(nil, State, none) :- finish(Q20), eqForState(State, Q20, false).
checkStep(State, one(P), Q66) :- checkPerson(State, P, Q66).
checkStep(State, two(P, Q), false) :- checkPerson(State, P, false), checkPerson(State, Q, false), grForPerson(P, Q, Q74).
checkStep(State, two(P, Q), false) :- checkPerson(State, P, true), checkPerson(State, Q, false), grForPerson(P, Q, Q74).
checkStep(State, two(P, Q), false) :- checkPerson(State, P, false), checkPerson(State, Q, true), grForPerson(P, Q, Q74).
checkStep(State, two(P, Q), Q74) :- checkPerson(State, P, true), checkPerson(State, Q, true), grForPerson(P, Q, Q74).
checkPerson(st(L, A0, B0, C0, D0), a, Q79) :- eqForBool(A0, L, Q79).
checkPerson(st(L, A0, B0, C0, D0), b, Q79) :- eqForBool(B0, L, Q79).
checkPerson(st(L, A0, B0, C0, D0), c, Q79) :- eqForBool(C0, L, Q79).
checkPerson(st(L, A0, B0, C0, D0), d, Q79) :- eqForBool(D0, L, Q79).
eqForBool(false, true, false).
eqForBool(false, false, true).
eqForBool(true, true, true).
eqForBool(true, false, false).
grForPerson(a, a, false).
grForPerson(a, b, true).
grForPerson(a, c, true).
grForPerson(a, d, true).
grForPerson(b, a, false).
grForPerson(b, b, false).
grForPerson(b, c, false).
grForPerson(b, d, true).
grForPerson(c, a, false).
grForPerson(c, b, false).
grForPerson(c, c, false).
grForPerson(c, d, true).
grForPerson(d, Y, false).
finish(st(false, false, false, false, false)).
eqForState(st(L1, A1, B1, C1, D1), st(L2, A2, B2, C2, D2), false) :- eqForBool(L1, L2, false), eqForBool(A1, A2, false), eqForBool(B1, B2, false), eqForBool(C1, C2, false), eqForBool(D1, D2, Q102).
eqForState(st(L1, A1, B1, C1, D1), st(L2, A2, B2, C2, D2), false) :- eqForBool(L1, L2, true), eqForBool(A1, A2, false), eqForBool(B1, B2, false), eqForBool(C1, C2, false), eqForBool(D1, D2, Q102).
eqForState(st(L1, A1, B1, C1, D1), st(L2, A2, B2, C2, D2), false) :- eqForBool(L1, L2, false), eqForBool(A1, A2, true), eqForBool(B1, B2, false), eqForBool(C1, C2, false), eqForBool(D1, D2, Q102).
eqForState(st(L1, A1, B1, C1, D1), st(L2, A2, B2, C2, D2), false) :- eqForBool(L1, L2, true), eqForBool(A1, A2, true), eqForBool(B1, B2, false), eqForBool(C1, C2, false), eqForBool(D1, D2, Q102).
eqForState(st(L1, A1, B1, C1, D1), st(L2, A2, B2, C2, D2), false) :- eqForBool(L1, L2, false), eqForBool(A1, A2, false), eqForBool(B1, B2, true), eqForBool(C1, C2, false), eqForBool(D1, D2, Q102).
eqForState(st(L1, A1, B1, C1, D1), st(L2, A2, B2, C2, D2), false) :- eqForBool(L1, L2, true), eqForBool(A1, A2, false), eqForBool(B1, B2, true), eqForBool(C1, C2, false), eqForBool(D1, D2, Q102).
eqForState(st(L1, A1, B1, C1, D1), st(L2, A2, B2, C2, D2), false) :- eqForBool(L1, L2, false), eqForBool(A1, A2, true), eqForBool(B1, B2, true), eqForBool(C1, C2, false), eqForBool(D1, D2, Q102).
eqForState(st(L1, A1, B1, C1, D1), st(L2, A2, B2, C2, D2), false) :- eqForBool(L1, L2, true), eqForBool(A1, A2, true), eqForBool(B1, B2, true), eqForBool(C1, C2, false), eqForBool(D1, D2, Q102).
eqForState(st(L1, A1, B1, C1, D1), st(L2, A2, B2, C2, D2), false) :- eqForBool(L1, L2, false), eqForBool(A1, A2, false), eqForBool(B1, B2, false), eqForBool(C1, C2, true), eqForBool(D1, D2, Q102).
eqForState(st(L1, A1, B1, C1, D1), st(L2, A2, B2, C2, D2), false) :- eqForBool(L1, L2, true), eqForBool(A1, A2, false), eqForBool(B1, B2, false), eqForBool(C1, C2, true), eqForBool(D1, D2, Q102).
eqForState(st(L1, A1, B1, C1, D1), st(L2, A2, B2, C2, D2), false) :- eqForBool(L1, L2, false), eqForBool(A1, A2, true), eqForBool(B1, B2, false), eqForBool(C1, C2, true), eqForBool(D1, D2, Q102).
eqForState(st(L1, A1, B1, C1, D1), st(L2, A2, B2, C2, D2), false) :- eqForBool(L1, L2, true), eqForBool(A1, A2, true), eqForBool(B1, B2, false), eqForBool(C1, C2, true), eqForBool(D1, D2, Q102).
eqForState(st(L1, A1, B1, C1, D1), st(L2, A2, B2, C2, D2), false) :- eqForBool(L1, L2, false), eqForBool(A1, A2, false), eqForBool(B1, B2, true), eqForBool(C1, C2, true), eqForBool(D1, D2, Q102).
eqForState(st(L1, A1, B1, C1, D1), st(L2, A2, B2, C2, D2), false) :- eqForBool(L1, L2, true), eqForBool(A1, A2, false), eqForBool(B1, B2, true), eqForBool(C1, C2, true), eqForBool(D1, D2, Q102).
eqForState(st(L1, A1, B1, C1, D1), st(L2, A2, B2, C2, D2), false) :- eqForBool(L1, L2, false), eqForBool(A1, A2, true), eqForBool(B1, B2, true), eqForBool(C1, C2, true), eqForBool(D1, D2, Q102).
eqForState(st(L1, A1, B1, C1, D1), st(L2, A2, B2, C2, D2), Q102) :- eqForBool(L1, L2, true), eqForBool(A1, A2, true), eqForBool(B1, B2, true), eqForBool(C1, C2, true), eqForBool(D1, D2, Q102).
eqForBool(false, true, false).
eqForBool(false, false, true).
eqForBool(true, true, true).
eqForBool(true, false, false).
add(o, Y, Y).
add(s(X'), Y, s(Z')) :- add(X', Y, Z').
step(State, one(P), Q36) :- movePerson(State, P, Q37), moveLight(Q37, Q36).
step(State, two(P, Q), Q36) :- movePerson(State, P, Q41), movePerson(Q41, Q, Q39), moveLight(Q39, Q36).
movePerson(st(L, true, B0, C0, D0), a, st(L, false, B0, C0, D0)).
movePerson(st(L, false, B0, C0, D0), a, st(L, true, B0, C0, D0)).
movePerson(st(L, A0, true, C0, D0), b, st(L, A0, false, C0, D0)).
movePerson(st(L, A0, false, C0, D0), b, st(L, A0, true, C0, D0)).
movePerson(st(L, A0, B0, true, D0), c, st(L, A0, B0, false, D0)).
movePerson(st(L, A0, B0, false, D0), c, st(L, A0, B0, true, D0)).
movePerson(st(L, A0, B0, C0, true), d, st(L, A0, B0, C0, false)).
movePerson(st(L, A0, B0, C0, false), d, st(L, A0, B0, C0, true)).
moveLight(st(true, A0, B0, C0, D0), st(false, A0, B0, C0, D0)).
moveLight(st(false, A0, B0, C0, D0), st(true, A0, B0, C0, D0)).
getTime(one(P), Q27) :- times(P, Q27).
getTime(two(P, Q), Q27) :- times(P, Q28), times(Q, Q29), max(Q28, Q29, Q27).
times(a, s(o)).
times(b, s(s(o))).
times(c, s(s(s(s(s(o)))))).
times(d, s(s(s(s(s(s(s(s(s(s(o))))))))))).
max(Q125, B0, Q125) :- greater(Q125, B0, true).
max(A0, Q125, Q125) :- greater(A0, Q125, false).
greater(o, B0, false).
greater(s(X), o, true).
greater(s(X), s(Y), Q146) :- greater(X, Y, Q146).