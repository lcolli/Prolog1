max1([X|XS], B):-
    max1(XS,A),(X > A ->X = B;B = A).
	max1([A],A).