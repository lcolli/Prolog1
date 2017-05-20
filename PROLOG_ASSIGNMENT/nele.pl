append([],L,L).
append([X|XS],L,ANS):-append(XS,L,ANS2),ANS=[X|ANS2].

nele([],N,[]).
nele(X|XS,N,ANS):-N>0,append(nele(X|XS,N-1)).