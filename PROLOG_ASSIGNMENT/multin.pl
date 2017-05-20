append([],L,L).
append([X|XS],L,ANS):-append(XS,L,ANS2),ANS=[X|ANS2].

multin(a,b,0,[a]).
multin(a,b,c,ANS):-append(multin(a*b,b,c-1),a,ANS).