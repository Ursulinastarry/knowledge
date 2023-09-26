parent(hellen,liz).

parent(hellen,ann).

parent(paul,ann).

parent(ann,kim).

parent(ann,pat).

parent(kim,jim).

sibling(pat,kim).

sibling(ann,liz).
female(hellen).

female(liz).

female(ann).

male(paul).

male(pat).

male(jim).
male(kim).

mother(X,Y):-parent(X, Y),female(X).

brother(X, Y):-parent(2,X), parent(2, Y),male(X),X\==Y.
sister(X, Y):-parent(Z, X), parent(2, Y),female(X),X\==Y.

sibling(X, Y):-brother(X, Y);brother(Y, X);sister(Y, X);sister(X, Y).
uncle(X, Y):-parent(2, Y), brother(X, 2).

aunt(X, Y):-parent(2,Y), sister(X, 2), female(X).

grandparent(X, Y):-parent(2,Y), parent(x, z).
grandmother(X, Y) :-mother(X, 2), parent(Z, Y).

grandfather(X, Y):-parent(X, 3), parent(Z, Y), male(X).

wife(X, Y) :-parent(x, z), parent(Y, Z), female(X), male(Y).

husband(X, Y):-parent(X, 2), parent(Y, 2), male(X),female(Y).

father(X, Y):-parent(X, Y), male(X).
