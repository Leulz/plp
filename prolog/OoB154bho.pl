notas(joao,5.0,7.0,8.0).
notas(maria,6.0,6.0,6.0).
notas(joana,8.0,5.1,10).
notas(mariana,9.0,9.0,3.0).
notas(cleuza,8.5,7.0,8.6).
notas(jose,3.5,3.0,2.0).
notas(mary,10.0,8.0,7.0).

media(aprovado,7.0,10.0).
media(final,4.0,6.9).
media(reprovado,0.0,3.9).

passou(X,Y) :- notas(X, A, B, C), media(Y,J,K), AVG is (A+B+C)/3, AVG>=J, AVG=<K.

:- initialization(main).
main:-
read(X),
passou(X,Y),
write(Y), nl, halt(0).