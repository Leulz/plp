ruled(rhodi, 844, 878).
ruled(anarawd, 878, 916).
ruled(hywel_dda, 916, 950).
ruled(lago_ap_idwal, 950, 979).
ruled(hywal_ap_ieuaf, 979, 985).
ruled(cadwallon, 985, 986).
ruled(maredudd, 986, 999).

king(X,Y) :- ruled(Y,A,B),X>A, X=<B.

:- initialization(main).
main:-
read(X),
king(X,Y),
write(Y), nl, halt(0).