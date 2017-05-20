delnth([X|XS],1,[X]).
delnth([X|XS],N,ANS):-dispnth(XS,N-1,ANS).