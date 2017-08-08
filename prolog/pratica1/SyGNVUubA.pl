densidade(brasil,25).
densidade(eua, 35.55).
densidade(canada, 3.88).
densidade(india,400).
densidade(china,144.44).
densidade(japao,127).
densidade(russia,8.35).

temMaiorDensidade(A,B,C) :- (densidade(C,X), densidade(A,J), densidade(B,K), X>J, X==K);(densidade(C,X), densidade(A,J), densidade(B,K), X>K, X==J).

:- initialization(main).
main:-
read(X),
read(Y),
temMaiorDensidade(X,Y,Z),
write(Z), nl, halt(0).