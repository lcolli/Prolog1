append([],L,L).
append([X|XS],L,ANS):-append(XS,L,ANS2),ANS=[X|ANS2].

inde(a,n,[],[]).
inde(a,n,X|XS,ANS):-X =:= a,nele(a,n+1,XS, ANS).