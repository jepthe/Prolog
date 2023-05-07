
%Facts
see( a, 2, 5).
see( d, 5, 5).
see( e, 5, 2).

on( a, b).
on( b, c).
on( c, table).
on( d, table).
on( e, table).

z(B,0) :- on(B, table).%la altura de B está en 0 si B está sobre table
z(B, Z) :- on(B, B0), z(B0, Z0), Z is Z0 + 1. %recursive
xy(B, X, Y) :- see(B, X, Y).
xy(B, X, Y). :- on(B0, B), xy(B0, X, Y).


%Questions
/*
see(X, 2, 5).
X = a.

on(X, b).
X = a.

on(Block, _). Block está en cualquier cosa
see(B1, _, Y). Blocks que tengan cualquier coordenada X y la misma coordenada Y
see(B1, _, Y), see(B2, _, Y), B1 \= B2. Par de blocks que están en cualquier eje X pero que coinciden en eje Y B1 no es B2
on(B, _), on(_, B). B está en cualquier objeto y cualquier objeto está sobre B 
see(a, X, Y). Qué coordenadas está el block a
*/


%Rules