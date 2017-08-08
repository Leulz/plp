append([],L,L).
append([H|T],L2,[H|L3])  :-  append(T,L2,L3).

removeall([],Elem,Z,Z).
removeall([H|T],Elem,List,Aux) :- (H \== Elem, append(List,[H],L), removeall(T,Elem,L,Aux));(H == Elem, removeall(T,Elem,List,Aux)).

setsum([],Acum,Acum).
setsum([H|T],Acum,Ans) :- removeall([H|T],H,[],L), Z is Acum+H, setsum(L,Z,Ans).

:- initialization(main).
main:-
read(X),
setsum(X,0,Y),
write(Y), nl, halt(0).