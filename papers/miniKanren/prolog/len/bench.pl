go :-
   test(rec),
   test(nb),
   test(asrt).

test(Name) :-
   N = 1 000 000,
   atomic_list_concat([Name,'_',gen],Gen),
   atomic_list_concat([Name,'_',lookup],Lookup),
   atomic_list_concat([Name,'_',clear],Clear),
   ignore(call(Clear,N)),
   writeln(Gen),
   time( call(Gen,N) ),
   writeln(Lookup),
   time( call(Lookup,N) ),
   write(Lookup), writeln(' (2nd time)'),
   time( call(Lookup,N) ).

rec_clear(N) :-
   forall(  between(1,N,I),
            (  recorded(I, I, Ref), erase(Ref)
	    )
   ).


rec_gen(N) :-
   forall(  between(1,N,I),
            (  recordz(I, I)
	    )
   ).


rec_lookup(N) :-
   forall(  between(1,N,I),
            (  recorded(I, I)
	    )
   ).

nb_clear(_).

nb_gen(N) :-
   forall(  between(1,N,I),
            %(  atom_number(A,I), nb_setval(A, I)
            (  nb_setval('500', I)
	    )
   ).

nb_lookup(N) :-
   forall(  between(1,N,_),
            (  nb_getval('500', _)
	    )
   ).

asrt_clear(_) :-
   retractall(keydb(_,_)).

asrt_gen(N) :-
   %retractall(keydb(_,_)),
   forall(  between(1,N,I),
            (  assertz(keydb(I,I))
	    )
   ).

asrt_lookup(N) :-
   forall(  between(1,N,I),
            (  keydb(I,I)
	    )
   ).
