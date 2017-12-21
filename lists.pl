parent(adam, john).
parent(eve, john).
parent(eve, lisa).
parent(john, anne).
parent(john, pat).
parent(pat, jacob).
parent(carol, jacob).

ancestor(X, Z) :- parent(X, Z).
ancestor(X, Z) :- parent(X, Y), ancestor(Y, Z).

head([Head | _], Head).
tail([_ | Tail], Tail).

isMember(X, [X | _]).
isMember(X, [_ | Tail]) :- isMember(X, Tail).

concatenate([], L, L).
concatenate([H|T], L, [H|ExtendedTail]) :- concatenate(T, L, ExtendedTail).

prepend(L, ELEMENT, [ELEMENT|L]).

addElement([], E, [E]).
addElement([H|T], E, [H|ExtendedTail]) :- addElement(T, E, ExtendedTail).

remove([X|T], X, T).
remove([H|T], X, [H|T2]) :- remove(T, X, T2).

hasLength([], 0).
hasLength([_|T], X) :- hasLength(T, X2), X is X2+1.
