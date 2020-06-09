comb([],[],0).
comb([X|List], [X|Tail],N) :- N>0, N1 is N-1, comb(List, Tail,N1).
comb([_|List], Tail,N) :- comb(List, Tail,N).

sum(L,R) :- sum(L,0,R).
sum([],F,F).
sum([H|T],F,R) :- F2 is F+H, sum(T,F2,R).

getLenList([],0).
getLenList([_|L],N):- getLenList(L,N1), N=N1+1.

s(X, [H|T], F) :- Z is 1, comb([H|T], Y,  Z), sum(Y, S), S = X, F = "true",!; Z is 1, s(X, [H|T], F, Z).
s(X, [H|T], F, Z) :- Z1 is Z + 1, getLenList([H|T],N), Z1 > N ,F = "false", !;  Z1 is Z + 1,  comb([H|T], Y, Z1), sum(Y, S), S = X, F = "true",!;Z1 is Z + 1, s(X, [H|T], F, Z1).
