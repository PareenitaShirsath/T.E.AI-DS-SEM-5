female(pam).
female(liz).
female(ann).
female(pat).
male(tom).
male(bob).
male(jim).
parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).
mother(X,Y):- parent(X,Y),female(X).
father(X,Y):- parent(X,Y),male(X).
grandparent(X,Y):-parent(X,Z),parent(Z,Y).

/*  Define female(individual)
Define male(individual)
Define parent(parent, child)

Function mother(X, Y):
    If parent(X, Y) and female(X) then
        return true

Function father(X, Y):
    If parent(X, Y) and male(X) then
        return true

Function grandparent(X, Y):
    If parent(X, Z) and parent(Z, Y) then
        return true
*/