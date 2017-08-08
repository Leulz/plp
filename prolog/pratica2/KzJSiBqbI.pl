append([],L,L).
append([H|T],L2,[H|L3])  :-  append(T,L2,L3).

search([],Elem,Z,Z).
search([H|T],Elem,List,Aux) :- (H \== Elem, append(List,[H],L), search(T,Elem,L,Aux));(H == Elem, search(T,null,List,Aux)).

:- initialization(main).
main:-
read(X),
read(Y),
search(X,Y,[],Z),
write(Z), nl, halt(0).