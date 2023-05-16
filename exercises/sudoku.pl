
solution(A, B, C, D,
         E, F, G, H,
         I, J, K, L,
         M, N, O, P) :-
    % row constraints
    permutation([1, 2, 3, 4], [A, B, C, D]),%en todas las filas solo debe haber del 1-4
    permutation([1, 2, 3, 4], [E, F, G, H]),
    permutation([1, 2, 3, 4], [I, J, K, L]),
    permutation([1, 2, 3, 4], [M, N, O, P]),

    % column constraints
    permutation([1, 2, 3, 4], [A, E, I, M]),%en todas las columnas solo debe haber del 1-4
    permutation([1, 2, 3, 4], [B, F, J, N]),%bienen ordenados de esta manera porque es como si lo viéramos del original para que coincidan los números
    permutation([1, 2, 3, 4], [C, G, K, O]),
    permutation([1, 2, 3, 4], [D, H, L, P]),


    % sub-square constraints
    permutation([1, 2, 3, 4], [A, B, E, F]),  % upper left
    permutation([1, 2, 3, 4], [C, D, G, H]),  % upper right
    permutation([1, 2, 3, 4], [I, J, M, N]),  % lower left
    permutation([1, 2, 3, 4], [K, L, O, P]).  % lower right

    

/* 
%reordena los elementos de la lista dada [1, 2, 3] 
no tiene nada que ver con el predicado anterior,
solo para entender qué hace permuntation en 
el caso de 4 variables por cada fila, columna o subcuadro

?- permutation([1, 2, 3], Perm). 
Perm = [1, 2, 3] ;
Perm = [1, 3, 2] ;
Perm = [2, 1, 3] ;
Perm = [2, 3, 1] ;
Perm = [3, 1, 2] ;
Perm = [3, 2, 1] ;
false.
*/

%predicado sudoku hace uso del predicado solution cuantas veces sean necesarios hasta que ya no haya más combinaciones
sudoku(A, B, C, D,
       E, F, G, H,
       I, J, K, L,
       M, N, O, P) :-
    solution(A, B, C, D,
             E, F, G, H,
             I, J, K, L,
             M, N, O, P),
    nl,%salto de linea para imprimir la primera o cuantas veces encuentre soluciones
    write('A solution to this puzzle is'),
    nl,
    %como todas las veriables ya están acomodados con sus respectivos numeros, hay qué imprimirlas en ese orden
    %por lo que dentro de sudoku hace el llamado de printtrow
    printrow(A, B, C, D),
    printrow(E, F, G, H),
    printrow(I, J, K, L),
    printrow(M, N, O, P).

%cuando es llamado printrow, recive las varibles pero con write las escribe en pantalla haciendo uso de espacios para verlos mejor
printrow(P, Q, R, S) :-
    write(' '), write(P), write(' '), write(Q),
    write(' '), write(R), write(' '), write(S), nl. %por ejemplo, hasta aquí imprime la primera linea (A,B,C,D)



/*
un ejemplo de una consulta es que podemos incluso condicionar numeros
de manera que prolog ignore esos y solo busque los que faltan para buscar las soluciones.
Por lo tanto dependiendo de la formulación de la consulta puede imprimir las soluciones encontradas.
     ?-sudoku(
          1, 4, _, _,
          _, _, 4, _,
          2, _, _, _,
          _, _, _, _).
*/