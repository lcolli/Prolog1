SumL([],0),
SumL([X|XS],ANS):-SumL(XS,ANS1),ANS is ANS1 + X.