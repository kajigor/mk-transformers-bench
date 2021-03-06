
/* Specialised program generated by ECCE 2.0 */
/* PD Goal: A */
/* Parameters: Abs:l InstCheck:v Msv:s NgSlv:g Part:e Prun:n Sel:t Whstl:f Raf:yesFar:yes Dce:yes Poly:y Dpu:yes ParAbs:yes Msvp:no Rrc:yes */
/* Transformation time: 5560 ms */
/* Unfolding time: 4340 ms */
/* Post-Processing time: 5560 ms */

/* Specialised Predicates:
typecheck___1(A,B) :- typecheck_(A,B,some(integer)).
nthOpt__2(A,B,C,D) :- nthOpt(cons(A,B),C,some(D)).
typecheck__conj__3(A,B,C,D,E) :- typecheck_(A,B,some(C)), typecheck_(cons(D,A),E,some(integer)).
nthOpt_conj__4(A,B,C,D,E,F) :- nthOpt(cons(A,B),C,some(D)), typecheck_(cons(E,cons(A,B)),F,some(integer)).
typecheck___5(A,B,C) :- typecheck_(A,B,some(C)).
typecheck__conj__6(A,B,C,D,E) :- typecheck_(A,B,some(boolean)), typecheck_(A,C,some(D)), typecheck_(A,E,some(D)), typeEq(D,D,true).
nthOpt_conj__7(A,B,C,D,E,F) :- nthOpt(cons(A,B),C,some(boolean)), typecheck_(cons(A,B),D,some(E)), typecheck_(cons(A,B),F,some(E)), typeEq(E,E,true).
typecheck__conj__8(A,B,C,D) :- typecheck_(A,B,some(boolean)), typecheck_(A,C,some(boolean)), typecheck_(A,D,some(boolean)).
typeEq__9(A) :- typeEq(A,A,true).
typecheck___10(A,B,C) :- typecheck_(cons(A,B),C,some(boolean)).
nthOpt__11(A) :- nthOpt(cons(B1,A),s(C1),some(D1)).
nthOpt_conj__12(A,B,C,D,E) :- nthOpt(cons(A,B),C,some(boolean)), typecheck_(cons(A,B),D,some(boolean)), typecheck_(cons(A,B),E,some(boolean)).
typecheck__conj__13(A,B,C) :- typecheck_(A,B,some(boolean)), typecheck_(A,C,some(boolean)).
typecheck___14(A,B) :- typecheck_(A,B,some(boolean)).
nthOpt_conj__15(A,B,C,D) :- nthOpt(cons(A,B),C,some(boolean)), typecheck_(cons(A,B),D,some(boolean)).
typecheck__conj__16(A,B,C,D,E) :- typecheck_(A,B,some(boolean)), typecheck_(A,C,some(D)), typecheck_(A,E,some(D)).
nthOpt_conj__17(A,B,C,D,E,F) :- nthOpt(cons(A,B),C,some(boolean)), typecheck_(cons(A,B),D,some(E)), typecheck_(cons(A,B),F,some(E)).
typecheck___18(A,B,C,D,E) :- typecheck_(cons(A,cons(B,C)),D,some(E)).
*/

typecheck_(nil,A,some(integer)) :-
  typecheck___1(nil,A).
typecheck___1(A,iConst_(B)).
typecheck___1(cons(A,B),var_(C)) :-
  nthOpt__2(A,B,C,integer).
typecheck___1(A,plus_(B,C)) :-
  typecheck___1(A,B),
  typecheck___1(A,C).
typecheck___1(A,mult_(B,C)) :-
  typecheck___1(A,B),
  typecheck___1(A,C).
typecheck___1(A,if_(B,C,D)) :-
  typecheck__conj__16(A,B,C,integer,D).
typecheck___1(A,let_(B,C)) :-
  typecheck__conj__3(A,B,D,D,C).
nthOpt__2(A,B,o,A).
nthOpt__2(A,cons(B,cons(C,cons(D,cons(E,cons(F,cons(G,cons(H,I))))))),s(J),K) :-
  nthOpt__11(I).
typecheck__conj__3(A,iConst_(B),integer,C,D) :-
  typecheck___1(cons(C,A),D).
typecheck__conj__3(A,bConst_(B),boolean,C,D) :-
  typecheck___1(cons(C,A),D).
typecheck__conj__3(cons(A,B),var_(C),D,E,F) :-
  nthOpt_conj__4(A,B,C,D,E,F).
typecheck__conj__3(A,plus_(B,C),integer,D,E) :-
  typecheck___1(A,B),
  typecheck___1(A,C),
  typecheck___1(cons(D,A),E).
typecheck__conj__3(A,mult_(B,C),integer,D,E) :-
  typecheck___1(A,B),
  typecheck___1(A,C),
  typecheck___1(cons(D,A),E).
typecheck__conj__3(A,equal_(B,C),boolean,D,E) :-
  typecheck___5(A,B,F),
  typecheck___5(A,C,F),
  typeEq__9(F),
  typecheck___1(cons(D,A),E).
typecheck__conj__3(A,less_(B,C),boolean,D,E) :-
  typecheck___1(A,B),
  typecheck___1(A,C),
  typecheck___1(cons(D,A),E).
typecheck__conj__3(A,if_(B,C,D),E,F,G) :-
  typecheck__conj__6(A,B,C,E,D),
  typecheck___1(cons(F,A),G).
typecheck__conj__3(A,let_(B,C),D,E,F) :-
  typecheck___5(A,B,G),
  typecheck___5(cons(G,A),C,D),
  typecheck___1(cons(E,A),F).
nthOpt_conj__4(A,B,o,A,C,D) :-
  typecheck___1(cons(C,cons(A,B)),D).
nthOpt_conj__4(A,cons(B,cons(C,cons(D,cons(E,cons(F,cons(G,cons(H,I))))))),s(J),K,L,M) :-
  nthOpt__11(I),
  typecheck___1(cons(L,cons(A,cons(B,cons(C,cons(D,cons(E,cons(F,cons(G,cons(H,I))))))))),M).
typecheck___5(A,iConst_(B),integer).
typecheck___5(A,bConst_(B),boolean).
typecheck___5(cons(A,B),var_(C),D) :-
  nthOpt__2(A,B,C,D).
typecheck___5(A,plus_(B,C),integer) :-
  typecheck___1(A,B),
  typecheck___1(A,C).
typecheck___5(A,mult_(B,C),integer) :-
  typecheck___1(A,B),
  typecheck___1(A,C).
typecheck___5(A,equal_(B,C),boolean) :-
  typecheck___5(A,B,D),
  typecheck___5(A,C,D),
  typeEq__9(D).
typecheck___5(A,less_(B,C),boolean) :-
  typecheck___1(A,B),
  typecheck___1(A,C).
typecheck___5(A,if_(B,C,D),E) :-
  typecheck__conj__6(A,B,C,E,D).
typecheck___5(A,let_(B,C),D) :-
  typecheck___5(A,B,E),
  typecheck___5(cons(E,A),C,D).
typecheck__conj__6(A,bConst_(B),C,D,E) :-
  typecheck___5(A,C,D),
  typecheck___5(A,E,D),
  typeEq__9(D).
typecheck__conj__6(cons(A,B),var_(C),D,E,F) :-
  nthOpt_conj__7(A,B,C,D,E,F).
typecheck__conj__6(A,equal_(B,C),D,E,F) :-
  typecheck___5(A,B,G),
  typecheck___5(A,C,G),
  typeEq__9(G),
  typecheck___5(A,D,E),
  typecheck___5(A,F,E),
  typeEq__9(E).
typecheck__conj__6(A,less_(B,C),D,E,F) :-
  typecheck___1(A,B),
  typecheck___1(A,C),
  typecheck___5(A,D,E),
  typecheck___5(A,F,E),
  typeEq__9(E).
typecheck__conj__6(A,if_(B,C,D),E,F,G) :-
  typecheck__conj__8(A,B,C,D),
  typecheck___5(A,E,F),
  typecheck___5(A,G,F),
  typeEq__9(F).
typecheck__conj__6(A,let_(B,C),D,E,F) :-
  typecheck___5(A,B,G),
  typecheck___10(G,A,C),
  typecheck___5(A,D,E),
  typecheck___5(A,F,E),
  typeEq__9(E).
nthOpt_conj__7(boolean,A,o,B,C,D) :-
  typecheck___5(cons(boolean,A),B,C),
  typecheck___5(cons(boolean,A),D,C),
  typeEq__9(C).
nthOpt_conj__7(A,cons(B,cons(C,cons(D,cons(E,cons(F,cons(G,cons(H,I))))))),s(J),K,L,M) :-
  nthOpt__11(I),
  typecheck___5(cons(A,cons(B,cons(C,cons(D,cons(E,cons(F,cons(G,cons(H,I)))))))),K,L),
  typecheck___5(cons(A,cons(B,cons(C,cons(D,cons(E,cons(F,cons(G,cons(H,I)))))))),M,L),
  typeEq__9(L).
typecheck__conj__8(A,bConst_(B),C,D) :-
  typecheck__conj__13(A,C,D).
typecheck__conj__8(cons(A,B),var_(C),D,E) :-
  nthOpt_conj__12(A,B,C,D,E).
typecheck__conj__8(A,equal_(B,C),D,E) :-
  typecheck___5(A,B,F),
  typecheck___5(A,C,F),
  typeEq__9(F),
  typecheck___14(A,D),
  typecheck___14(A,E).
typecheck__conj__8(A,less_(B,C),D,E) :-
  typecheck___1(A,B),
  typecheck___1(A,C),
  typecheck___14(A,D),
  typecheck___14(A,E).
typecheck__conj__8(A,if_(B,C,D),E,F) :-
  typecheck__conj__8(A,B,C,D),
  typecheck__conj__13(A,E,F).
typecheck__conj__8(A,let_(B,C),D,E) :-
  typecheck___5(A,B,F),
  typecheck___10(F,A,C),
  typecheck___14(A,D),
  typecheck___14(A,E).
typeEq__9(integer).
typeEq__9(boolean).
typecheck___10(A,B,bConst_(C)).
typecheck___10(A,B,var_(C)) :-
  nthOpt__2(A,B,C,boolean).
typecheck___10(A,B,equal_(C,D)) :-
  typecheck___5(cons(A,B),C,E),
  typecheck___5(cons(A,B),D,E),
  typeEq__9(E).
typecheck___10(A,B,less_(C,D)) :-
  typecheck___1(cons(A,B),C),
  typecheck___1(cons(A,B),D).
typecheck___10(A,B,if_(C,D,E)) :-
  typecheck___10(A,B,C),
  typecheck___10(A,B,D),
  typecheck___10(A,B,E).
typecheck___10(A,B,let_(C,D)) :-
  typecheck___5(cons(A,B),C,E),
  typecheck___10(E,cons(A,B),D).
nthOpt__11(cons(A,cons(B,cons(C,cons(D,cons(E,cons(F,cons(G,H)))))))) :-
  nthOpt__11(H).
nthOpt_conj__12(boolean,A,o,B,C) :-
  typecheck___10(boolean,A,B),
  typecheck___10(boolean,A,C).
nthOpt_conj__12(A,cons(B,cons(C,cons(D,cons(E,cons(F,cons(G,cons(H,I))))))),s(J),K,L) :-
  nthOpt__11(I),
  typecheck___10(A,cons(B,cons(C,cons(D,cons(E,cons(F,cons(G,cons(H,I))))))),K),
  typecheck___10(A,cons(B,cons(C,cons(D,cons(E,cons(F,cons(G,cons(H,I))))))),L).
typecheck__conj__13(A,bConst_(B),C) :-
  typecheck___14(A,C).
typecheck__conj__13(cons(A,B),var_(C),D) :-
  nthOpt_conj__15(A,B,C,D).
typecheck__conj__13(A,equal_(B,C),D) :-
  typecheck___5(A,B,E),
  typecheck___5(A,C,E),
  typeEq__9(E),
  typecheck___14(A,D).
typecheck__conj__13(A,less_(B,C),D) :-
  typecheck___1(A,B),
  typecheck___1(A,C),
  typecheck___14(A,D).
typecheck__conj__13(A,if_(B,C,D),E) :-
  typecheck__conj__8(A,B,C,D),
  typecheck___14(A,E).
typecheck__conj__13(A,let_(B,C),D) :-
  typecheck___5(A,B,E),
  typecheck___10(E,A,C),
  typecheck___14(A,D).
typecheck___14(A,bConst_(B)).
typecheck___14(cons(A,B),var_(C)) :-
  nthOpt__2(A,B,C,boolean).
typecheck___14(A,equal_(B,C)) :-
  typecheck___5(A,B,D),
  typecheck___5(A,C,D),
  typeEq__9(D).
typecheck___14(A,less_(B,C)) :-
  typecheck___1(A,B),
  typecheck___1(A,C).
typecheck___14(A,if_(B,C,D)) :-
  typecheck__conj__8(A,B,C,D).
typecheck___14(A,let_(B,C)) :-
  typecheck___5(A,B,D),
  typecheck___10(D,A,C).
nthOpt_conj__15(boolean,A,o,B) :-
  typecheck___10(boolean,A,B).
nthOpt_conj__15(A,cons(B,cons(C,cons(D,cons(E,cons(F,cons(G,cons(H,I))))))),s(J),K) :-
  nthOpt__11(I),
  typecheck___10(A,cons(B,cons(C,cons(D,cons(E,cons(F,cons(G,cons(H,I))))))),K).
typecheck__conj__16(A,bConst_(B),C,D,E) :-
  typecheck___5(A,C,D),
  typecheck___5(A,E,D).
typecheck__conj__16(cons(A,B),var_(C),D,E,F) :-
  nthOpt_conj__17(A,B,C,D,E,F).
typecheck__conj__16(A,equal_(B,C),D,E,F) :-
  typecheck___5(A,B,G),
  typecheck___5(A,C,G),
  typeEq__9(G),
  typecheck___5(A,D,E),
  typecheck___5(A,F,E).
typecheck__conj__16(A,less_(B,C),D,E,F) :-
  typecheck___1(A,B),
  typecheck___1(A,C),
  typecheck___5(A,D,E),
  typecheck___5(A,F,E).
typecheck__conj__16(A,if_(B,C,D),E,F,G) :-
  typecheck__conj__8(A,B,C,D),
  typecheck___5(A,E,F),
  typecheck___5(A,G,F).
typecheck__conj__16(A,let_(B,C),D,E,F) :-
  typecheck___5(A,B,G),
  typecheck___10(G,A,C),
  typecheck___5(A,D,E),
  typecheck___5(A,F,E).
nthOpt_conj__17(boolean,A,o,B,C,D) :-
  typecheck___5(cons(boolean,A),B,C),
  typecheck___5(cons(boolean,A),D,C).
nthOpt_conj__17(A,cons(B,cons(C,cons(D,cons(E,cons(F,cons(G,cons(H,I))))))),s(J),K,L,M) :-
  nthOpt__11(I),
  typecheck___18(A,B,cons(C,cons(D,cons(E,cons(F,cons(G,cons(H,I)))))),K,L),
  typecheck___18(A,B,cons(C,cons(D,cons(E,cons(F,cons(G,cons(H,I)))))),M,L).
typecheck___18(A,B,C,iConst_(D),integer).
typecheck___18(A,B,C,bConst_(D),boolean).
typecheck___18(A,B,C,var_(D),E) :-
  nthOpt__2(A,cons(B,C),D,E).
typecheck___18(A,B,C,plus_(D,E),integer) :-
  typecheck___1(cons(A,cons(B,C)),D),
  typecheck___1(cons(A,cons(B,C)),E).
typecheck___18(A,B,C,mult_(D,E),integer) :-
  typecheck___1(cons(A,cons(B,C)),D),
  typecheck___1(cons(A,cons(B,C)),E).
typecheck___18(A,B,C,equal_(D,E),boolean) :-
  typecheck___5(cons(A,cons(B,C)),D,F),
  typecheck___5(cons(A,cons(B,C)),E,F),
  typeEq__9(F).
typecheck___18(A,B,C,less_(D,E),boolean) :-
  typecheck___1(cons(A,cons(B,C)),D),
  typecheck___1(cons(A,cons(B,C)),E).
typecheck___18(A,B,C,if_(D,E,F),G) :-
  typecheck__conj__16(cons(A,cons(B,C)),D,E,G,F),
  typeEq__9(G).
typecheck___18(A,B,C,let_(D,E),F) :-
  typecheck___18(A,B,C,D,G),
  typecheck___18(G,A,cons(B,C),E,F).