append([],L,L).
append([X|XS],L,ANS):-append(XS,L,ANS2),ANS=[X|ANS2].

/*FUNCTION: delnth*/
delnth([],0,[]).
delnth([X|XS],N,ANS):-append(X,delnth(XS,N-1),ANS).

/*FUNCTION: dispnth*/
dispnth([X|XS],1,[X]).
dispnth([X|XS],N,ANS):-dispnth(XS,N-1,ANS).

/*FUNCTION: SumL*/
SumL([],0),
SumL([X|XS],ANS):-SumL(XS,ANS1),ANS is ANS1 + X.

/*FUNCTION: inde*/
inde(a,n,[],[]).
inde(a,n,X|XS,ANS):-X =:= a,nele(a,n+1,XS, ANS).

/*FUNCTION: maxl*/
max1([A],A).
max1([X|XS], B):- max1(XS,A),(X > A ->X = B;B = A).

/*FUNCTION: multin*/
multin(a,b,0,[a]).
multin(a,b,c,ANS):-append(multin(a*b,b,c-1),a,ANS).

/*FUNCTION: nele*/
nele([],N,[]).
nele(X|XS,N,ANS):-N>0,append(nele(X|XS,N-1)).

/*FUNCTION: remv*/
remv(e,[],[]).
remv(e,[X|XS],ANS):-X==e,append(remv(e,XS,ANS),X).

/*FUNCTION: remvdub*/
remvdub([],[]).
remvdub([X|XS],ANS):-append(remvdub(remv(X,XS),ANS),X).

