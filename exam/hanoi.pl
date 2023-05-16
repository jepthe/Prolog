% hanoi(Discos,Origen,Destino,Ayuda).
hanoi(0,I,F,A).

hanoi(N,I,F,A) :- N > 0, N1 is N-1, 
                  hanoi(N1, I, A, F),
                  write(I), write('->'),
                  write(F), nl,
                  hanoi(N1,A,F,I).

% quiestion ?- hanoi(3,pri,seg,ter).