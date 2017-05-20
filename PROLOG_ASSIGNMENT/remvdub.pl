append([],L,L).
append([X|XS],L,ANS):-append(XS,L,ANS2),ANS=[X|ANS2].

remv(e,[],[]).
remv(e,[X|XS],ANS):-X==e,append(remv(e,XS,ANS),X).

remvdub([],[]).
remvdub([X|XS],ANS):-append(remvdub(remv(X,XS),ANS),X).