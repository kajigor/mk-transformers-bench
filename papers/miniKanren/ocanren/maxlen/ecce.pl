/*
len([],0).
len([H|T],L1) :- len(T,L), L1 is L + 1.

max(Ls,M) :- max1(Ls,0,M).

max1([],M,M).
max1([H|T],N,M) :-
	H =< N, max1(T,N,M).
max1([H|T],N,M) :-
	H > N, max1(T,H,M).

maxlen(Ls,M,L) :- max(Ls,M),len(Ls,L).  /*  <---- specialize this */
  */

/* Specialised program generated by ECCE 2.0 */
/* PD Goal: A */
/* Parameters: Abs:l InstCheck:v Msv:s NgSlv:g Part:e Prun:n Sel:t Whstl:f Raf:yesFar:yes Dce:yes Poly:y Dpu:yes ParAbs:yes Msvp:no Rrc:yes */
/* Transformation time: 40 ms */
/* Unfolding time: 40 ms */
/* Post-Processing time: 40 ms */

/* Specialised Predicates: 
maxlen__1(A,B,C) :- maxlen(A,B,C).
max1_conj__2(A,B,C,D) :- max1(A,B,C), len(A,D).
*/

maxlen(A,B,C) :- 
    maxlen__1(A,B,C).
maxlen__1([],0,0).
maxlen__1([A|B],C,D) :- 
    A =< 0, 
    max1_conj__2(B,0,C,E), 
    D is '+'(E,1).
maxlen__1([A|B],C,D) :- 
    A > 0, 
    max1_conj__2(B,A,C,E), 
    D is '+'(E,1).
max1_conj__2([],A,A,0).
max1_conj__2([A|B],C,D,E) :- 
    A =< C, 
    max1_conj__2(B,C,D,F), 
    E is '+'(F,1).
max1_conj__2([A|B],C,D,E) :- 
    A > C, 
    max1_conj__2(B,A,D,F), 
    E is '+'(F,1).      