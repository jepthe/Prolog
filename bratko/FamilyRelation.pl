%Facts
parent(pam, bob). %pam es padre de bob
parent(tom, bob).
parent(tom, liz).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).

% NOTA: ejecutar con: swipl -f nombre.pl en la terminal
%       si en la ejecución hay más de una respuesta, presionar el tabulador

/*Questions
1.1 
(a) ?- parent( jim, X).
(b) ?- parent( X, jim).
(c) ?- parent( pam, X), parent( X, pat).
(d) ?- parent( pam, X), parent( X, Y), parent( Y, jim).
*/
/*
1.2 formular las preguntas
(a) Quién es parent de Pat? 
    parent(X, pat).
(b) Liz tiene un hijo?
    false
(c) Quién es el abuelo de Pat?
    parent(Y, pat), parent(X, Y). ->quién es padre de pat y esa Y quién es su padre 
*/

%Facts
%se agrega sexo a las relaciones unarias
female(pam).
male(tom).
male(bob).
female(liz).
female(pat).
female(ann).
male(jim).



%Rules

mother(X, Y) :- parent(X, Y), parent(Y, Z). % X es madre de Y si X es parent de Y y X es mujer

grandparent(X, Z) :- parent(X, Y). parent(Y, Z).% X es abuelo de Z si X es padre de Y y Y es padre de Z

%1.3 traducir los enunciados a reglas
%(a) Todos los que tienen un hijo son felices (introducir una relación de un argumento happy)
happy(X) :- parent(X,_). % el _ indica que no importa la variable que se ponga en las preguntas
%(b) Para todo X, si X tiene un hijo que tiene una hermana, entonces X tiene dos hijos (introducir nueva relación hastwochildren (tienedoshijos)).
hastwochildren(X) :- parent(X,Y), parent(X,Z), Y\=Z, female(Y), female(Z).
%hastwochildren(X) :- parent(X,Y), parent(X,Z), Y\=Z, female(Y); male(Y), female(Z); male(Z). %preguntar por los "or" (;)

%1.4 Defina la relación grandchild usando la relación parent.
grandchild(X, Z) :- parent(Z, Y), parent(Y, X).

%hermana
sister( X, Y) :- %X es hna de Y si
parent( Z, X), % Z es padre de X y
parent( Z, Y), % Z es padre de Y y
female( X), % X es mujer
X\=Y. % X no es hna de sí misma

%1.5 Defina la relación tia aunt(X, Y) en términos de las relaciones parent y sister.
aunt(X, Y) :- sister(X, Z), parent(P, X), parent(P, Z), X\=Z, female(X). %


%RECURSIVE

%ancestro
ancestor(X, Z) :- parent(X, Z). %ancestro directo
%ancestor(abuelo, nieto) :- parent(abuelo, padre), ancestor(padre, nieto)
ancestor(X, Z) :- parent(X, Y), ancestor(Y, Z). %ancestro indirecto 



