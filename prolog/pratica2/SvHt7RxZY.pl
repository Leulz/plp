reverse([],Z,Z).

reverse([H|T],Z,Base) :- reverse(T,Z,[H|Base]).

:- initialization(main).
main:-
read(X),
reverse(X,Y,[]),
write(Y), nl, halt(0).