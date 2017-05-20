append([],L,L).
append([X|XS],L,ANS):-append(XS,L,ANS2),ANS=[X|ANS2].

delnth([],0,[]).
delnth([X|XS],N,ANS):-append(X,delnth(XS,N-1),ANS).

delnth([1,2,3,4], 2).
