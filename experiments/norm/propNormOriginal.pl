ando(true, true, true).
ando(false, true, false).
ando(true, false, false).
ando(false, false, false).
oro(true, true, true).
oro(false, true, true).
oro(true, false, true).
oro(false, false, false).
noto(true, false).
noto(false, true).
evalo(St, Fm, U) :- evalo(St, X, V), rel_0(Fm, X, V, U, St, Y, W).
evalo(St, var(Z), U) :- elemo(Z, St, U).
elemo(o, cons(H, T), H).
elemo(s(N_0), cons(H, T), V) :- elemo(N_0, T, V).
rel_0(neg(X), X, V, U, St, Y, W) :- noto(V, U).
rel_0(Fm, X, V, U, St, Y, W) :- evalo(St, Y, W), rel_1(Fm, X, Y, V, W, U).
rel_1(conj(X, Y), X, Y, V, W, U) :- ando(V, W, U).
rel_1(disj(X, Y), X, Y, V, W, U) :- oro(V, W, U).