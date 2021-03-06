
/* Specialised program generated by ECCE 2.0 */
/* PD Goal: A */
/* Parameters: Abs:l InstCheck:v Msv:s NgSlv:g Part:e Prun:n Sel:t Whstl:f Raf:yesFar:yes Dce:yes Poly:y Dpu:yes ParAbs:yes Msvp:no Rrc:yes */
/* Transformation time: 20 ms */
/* Unfolding time: 20 ms */
/* Post-Processing time: 20 ms */

/* Specialised Predicates: 
doubleAppendo__1(A,B,C,D) :- doubleAppendo(A,B,C,D).
appendo_conj__2(A,B,C,D) :- appendo(A,B,E1), appendo(E1,C,D).
appendo__3(A,B,C) :- appendo(A,B,C).
*/

doubleAppendo(A,B,C,D) :- 
    doubleAppendo__1(A,B,C,D).
doubleAppendo__1(nil,A,B,C) :- 
    appendo__3(A,B,C).
doubleAppendo__1(cons(A,B),C,D,cons(A,E)) :- 
    appendo_conj__2(B,C,D,E).
appendo_conj__2(nil,A,B,C) :- 
    appendo__3(A,B,C).
appendo_conj__2(cons(A,B),C,D,cons(A,E)) :- 
    appendo_conj__2(B,C,D,E).
appendo__3(nil,A,A).
appendo__3(cons(A,B),C,cons(A,D)) :- 
    appendo__3(B,C,D).
