len([],o).
len([H|T],s(L)) :- len(T,L).
