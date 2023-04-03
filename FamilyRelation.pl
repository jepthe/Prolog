parent(pam, bob).
parent(tom, bob).
parent(tom, liz).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).

female(pam).
male(tom).
male(bob).
female(liz).
female(pat).
female(ann).
male(jim).

/*1.3*/
/*a*/
happy(X) :- parent(X,_).
/*b*/
hastwochildren(X) :- parent(X,Y), parent(X,Z), Y\=Z, female(Y), female(Z).

/*1.4*/
grandchild(X, Z) :- parent(Z, Y), parent(Y, X).