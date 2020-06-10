ind4:-Index is 0, N is 3,pet(Index,N,[������,���,�����]).
pet(N,N,List):-!.
pet(Index,N,List):-ind_access(Index,List,Pet),������(Owner,Pet),write(Owner),write(' - ������ '),write(Pet),nl,Index1 is Index+1,pet(Index1,N,List).
ind_access(0,[Elem|_Tail],Elem):-!.
ind_access(Index,_List,_Elem):-Index<0,!,fail.
ind_access(Index,[_Head|Tail],Elem):-NextIndex is Index-1,ind_access(NextIndex,Tail,Elem).
������(����,Pet):-not(Pet = ���), not(Pet = �����).
������(����,���).
������(����,Pet):-not(Pet = ���).
