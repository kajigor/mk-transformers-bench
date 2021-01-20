evalo(St, conj(X, Y), U) :- evalo(St, X, V), evalo(St, Y, W), ando(V, W, U).
evalo(St, disj(X, Y), U) :- evalo(St, X, V), evalo(St, Y, W), oro(V, W, U).
evalo(St, neg(X), U) :- evalo(St, X, V), noto(V, U).
evalo(St, var(Z), U) :- elemo(Z, St, U).
ando(A, B, C) :- nando(A, B, Ab), nando(Ab, Ab, C).
nando(false, false, true).
nando(false, true, true).
nando(true, false, true).
nando(true, true, false).
oro(A, B, C) :- nando(A, A, Aa), nando(B, B, Bb), nando(Aa, Bb, C).
nando(false, false, true).
nando(false, true, true).
nando(true, false, true).
nando(true, true, false).
noto(A, Na) :- nando(A, A, Na).
nando(false, false, true).
nando(false, true, true).
nando(true, false, true).
nando(true, true, false).
elemo(o, cons(H, T), H).
elemo(s(N_0), cons(H, T), V) :- elemo(N_0, T, V).