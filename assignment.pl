%Definitions for isElementInList(El, List)
isElementInList(X, [X|T]).

isElementInList(X, [H|T]):- 
isElementInList(X, T).


%Definitions for reverseList(List, ReversedList)
reverseList([], ReversedList).

reverseList([H|T], ReversedList):-
	reverseListMerge(T, [H], ReversedList).
	
reverseListMerge([],X,X).

reverseListMerge([H|T],X,ReversedList):-
		reverseListMerge(T, [H|X], ReversedList).

%insertElementIntoListEnd(List, El, NewList)
insertElementIntoListEnd([],El, [El]).

insertElementIntoListEnd([H|T], El, [H|R]) :- 
	insertElementIntoListEnd(T, El, R).


%Definitions for mergeLists(List1, List2, Merged)

mergeLists([],X,X).


mergeLists([H|T], List2, [H|R]):-
	mergeLists(T,List2,R).
	
	
	
