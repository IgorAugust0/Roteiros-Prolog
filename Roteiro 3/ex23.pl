% 23. Crie consultas para responder as seguintes perguntas:

remove(X,[X|R],R).
remove(X,[F|R],[F|S]) :- remove(X,R,S).

arranjo(0,_,[]).
arranjo(N,L,[H|Arranjo]):-
    N>0,
    N1 is N-1,
    remove(H,L,Resto),
    arranjo(N1,Resto,Arranjo).

% Quais os numeros de 3 algarismos que podem ser formados com os
% algarismos 1, 2, 3, 4, 5 e 7, sem repeti-los?


/*
?- arranjo(3,[1,2,3,4,5,7],C).
C = [1, 2, 3] ;
C = [1, 2, 4] ;
C = [1, 2, 5] ;
C = [1, 2, 7] ;
C = [1, 3, 2] ;
C = [1, 3, 4] ;
C = [1, 3, 5] ;
C = [1, 3, 7] ;
C = [1, 4, 2] ;
C = [1, 4, 3] ;
C = [1, 4, 5] ;
C = [1, 4, 7] ;
C = [1, 5, 2] ;
C = [1, 5, 3] ;
C = [1, 5, 4] ;
C = [1, 5, 7] ;
C = [1, 7, 2] ;
C = [1, 7, 3] ;
C = [1, 7, 4] ;
C = [1, 7, 5] ;
C = [2, 1, 3] ;
C = [2, 1, 4] ;
C = [2, 1, 5] ;
C = [2, 1, 7] ;
C = [2, 3, 1] ;
C = [2, 3, 4] ;
C = [2, 3, 5] ;
C = [2, 3, 7] ;
C = [2, 4, 1] ;
C = [2, 4, 3] ;
C = [2, 4, 5] ;
C = [2, 4, 7] ;
C = [2, 5, 1] ;
C = [2, 5, 3] ;
C = [2, 5, 4] ;
C = [2, 5, 7] ;
C = [2, 7, 1] ;
C = [2, 7, 3] ;
C = [2, 7, 4] ;
C = [2, 7, 5] ;
C = [3, 1, 2] ;
C = [3, 1, 4] ;
C = [3, 1, 5] ;
C = [3, 1, 7] ;
C = [3, 2, 1] ;
C = [3, 2, 4] ;
C = [3, 2, 5] ;
C = [3, 2, 7] ;
C = [3, 4, 1] ;
C = [3, 4, 2] ;
C = [3, 4, 5] ;
C = [3, 4, 7] ;
C = [3, 5, 1] ;
C = [3, 5, 2] ;
C = [3, 5, 4] ;
C = [3, 5, 7] ;
C = [3, 7, 1] ;
C = [3, 7, 2] ;
C = [3, 7, 4] ;
C = [3, 7, 5] ;
C = [4, 1, 2] ;
C = [4, 1, 3] ;
C = [4, 1, 5] ;
C = [4, 1, 7] ;
C = [4, 2, 1] ;
C = [4, 2, 3] ;
C = [4, 2, 5] ;
C = [4, 2, 7] ;
C = [4, 3, 1] ;
C = [4, 3, 2] ;
C = [4, 3, 5] ;
C = [4, 3, 7] ;
C = [4, 5, 1] ;
C = [4, 5, 2] ;
C = [4, 5, 3] ;
C = [4, 5, 7] ;
C = [4, 7, 1] ;
C = [4, 7, 2] ;
C = [4, 7, 3] ;
C = [4, 7, 5] ;
C = [5, 1, 2] ;
C = [5, 1, 3] ;
C = [5, 1, 4] ;
C = [5, 1, 7] ;
C = [5, 2, 1] ;
C = [5, 2, 3] ;
C = [5, 2, 4] ;
C = [5, 2, 7] ;
C = [5, 3, 1] ;
C = [5, 3, 2] ;
C = [5, 3, 4] ;
C = [5, 3, 7] ;
C = [5, 4, 1] ;
C = [5, 4, 2] ;
C = [5, 4, 3] ;
C = [5, 4, 7] ;
C = [5, 7, 1] ;
C = [5, 7, 2] ;
C = [5, 7, 3] ;
C = [5, 7, 4] ;
C = [7, 1, 2] ;
C = [7, 1, 3] ;
C = [7, 1, 4] ;
C = [7, 1, 5] ;
C = [7, 2, 1] ;
C = [7, 2, 3] ;
C = [7, 2, 4] ;
C = [7, 2, 5] ;
C = [7, 3, 1] ;
C = [7, 3, 2] ;
C = [7, 3, 4] ;
C = [7, 3, 5] ;
C = [7, 4, 1] ;
C = [7, 4, 2] ;
C = [7, 4, 3] ;
C = [7, 4, 5] ;
C = [7, 5, 1] ;
C = [7, 5, 2] ;
C = [7, 5, 3] ;
C = [7, 5, 4] ;
*/


% Suponha que temos oito corredores disputando uma corrida. O primeiro
% classificado recebe uma medalha de ouro, o segundo de prata e o
% terceiro de bronze. Admitindo que todas as classificacoes podem
% ocorrer, quais as distintas maneiras de se atribuir as medalhas?

/*

Obs.:
c = corredor

Ordem:
C = [Ouro, Prata, Bronze].

arranjo(3,[c1,c2,c3,c4,c5,c6,c7,c8],C).

C = [c1, c2, c3] ;
C = [c1, c2, c4] ;
C = [c1, c2, c5] ;
C = [c1, c2, c6] ;
C = [c1, c2, c7] ;
C = [c1, c2, c8] ;
C = [c1, c3, c2] ;
C = [c1, c3, c4] ;
C = [c1, c3, c5] ;
C = [c1, c3, c6] ;
C = [c1, c3, c7] ;
C = [c1, c3, c8] ;
C = [c1, c4, c2] ;
C = [c1, c4, c3] ;
C = [c1, c4, c5] ;
C = [c1, c4, c6] ;
C = [c1, c4, c7] ;
C = [c1, c4, c8] ;
C = [c1, c5, c2] ;
C = [c1, c5, c3] ;
C = [c1, c5, c4] ;
C = [c1, c5, c6] ;
C = [c1, c5, c7] ;
C = [c1, c5, c8] ;
C = [c1, c6, c2] ;
C = [c1, c6, c3] ;
C = [c1, c6, c4] ;
C = [c1, c6, c5] ;
C = [c1, c6, c7] ;
C = [c1, c6, c8] ;
C = [c1, c7, c2] ;
C = [c1, c7, c3] ;
C = [c1, c7, c4] ;
C = [c1, c7, c5] ;
C = [c1, c7, c6] ;
C = [c1, c7, c8] ;
C = [c1, c8, c2] ;
C = [c1, c8, c3] ;
C = [c1, c8, c4] ;
C = [c1, c8, c5] ;
C = [c1, c8, c6] ;
C = [c1, c8, c7] ;
C = [c2, c1, c3] ;
C = [c2, c1, c4] ;
C = [c2, c1, c5] ;
C = [c2, c1, c6] ;
C = [c2, c1, c7] ;
C = [c2, c1, c8] ;
C = [c2, c3, c1] ;
C = [c2, c3, c4] ;
C = [c2, c3, c5] ;
C = [c2, c3, c6] ;
C = [c2, c3, c7] ;
C = [c2, c3, c8] ;
C = [c2, c4, c1] ;
C = [c2, c4, c3] ;
C = [c2, c4, c5] ;
C = [c2, c4, c6] ;
C = [c2, c4, c7] ;
C = [c2, c4, c8] ;
C = [c2, c5, c1] ;
C = [c2, c5, c3] ;
C = [c2, c5, c4] ;
C = [c2, c5, c6] ;
C = [c2, c5, c7] ;
C = [c2, c5, c8] ;
C = [c2, c6, c1] ;
C = [c2, c6, c3] ;
C = [c2, c6, c4] ;
C = [c2, c6, c5] ;
C = [c2, c6, c7] ;
C = [c2, c6, c8] ;
C = [c2, c7, c1] ;
C = [c2, c7, c3] ;
C = [c2, c7, c4] ;
C = [c2, c7, c5] ;
C = [c2, c7, c6] ;
C = [c2, c7, c8] ;
C = [c2, c8, c1] ;
C = [c2, c8, c3] ;
C = [c2, c8, c4] ;
C = [c2, c8, c5] ;
C = [c2, c8, c6] ;
C = [c2, c8, c7] ;
C = [c3, c1, c2] ;
C = [c3, c1, c4] ;
C = [c3, c1, c5] ;
C = [c3, c1, c6] ;
C = [c3, c1, c7] ;
C = [c3, c1, c8] ;
C = [c3, c2, c1] ;
C = [c3, c2, c4] ;
C = [c3, c2, c5] ;
C = [c3, c2, c6] ;
C = [c3, c2, c7] ;
C = [c3, c2, c8] ;
C = [c3, c4, c1] ;
C = [c3, c4, c2] ;
C = [c3, c4, c5] ;
C = [c3, c4, c6] ;
C = [c3, c4, c7] ;
C = [c3, c4, c8] ;
C = [c3, c5, c1] ;
C = [c3, c5, c2] ;
C = [c3, c5, c4] ;
C = [c3, c5, c6] ;
C = [c3, c5, c7] ;
C = [c3, c5, c8] ;
C = [c3, c6, c1] ;
C = [c3, c6, c2] ;
C = [c3, c6, c4] ;
C = [c3, c6, c5] ;
C = [c3, c6, c7] ;
C = [c3, c6, c8] ;
C = [c3, c7, c1] ;
C = [c3, c7, c2] ;
C = [c3, c7, c4] ;
C = [c3, c7, c5] ;
C = [c3, c7, c6] ;
C = [c3, c7, c8] ;
C = [c3, c8, c1] ;
C = [c3, c8, c2] ;
C = [c3, c8, c4] ;
C = [c3, c8, c5] ;
C = [c3, c8, c6] ;
C = [c3, c8, c7] ;
C = [c4, c1, c2] ;
C = [c4, c1, c3] ;
C = [c4, c1, c5] ;
C = [c4, c1, c6] ;
C = [c4, c1, c7] ;
C = [c4, c1, c8] ;
C = [c4, c2, c1] ;
C = [c4, c2, c3] ;
C = [c4, c2, c5] ;
C = [c4, c2, c6] ;
C = [c4, c2, c7] ;
C = [c4, c2, c8] ;
C = [c4, c3, c1] ;
C = [c4, c3, c2] ;
C = [c4, c3, c5] ;
C = [c4, c3, c6] ;
C = [c4, c3, c7] ;
C = [c4, c3, c8] ;
C = [c4, c5, c1] ;
C = [c4, c5, c2] ;
C = [c4, c5, c3] ;
C = [c4, c5, c6] ;
C = [c4, c5, c7] ;
C = [c4, c5, c8] ;
C = [c4, c6, c1] ;
C = [c4, c6, c2] ;
C = [c4, c6, c3] ;
C = [c4, c6, c5] ;
C = [c4, c6, c7] ;
C = [c4, c6, c8] ;
C = [c4, c7, c1] ;
C = [c4, c7, c2] ;
C = [c4, c7, c3] ;
C = [c4, c7, c5] ;
C = [c4, c7, c6] ;
C = [c4, c7, c8] ;
C = [c4, c8, c1] ;
C = [c4, c8, c2] ;
C = [c4, c8, c3] ;
C = [c4, c8, c5] ;
C = [c4, c8, c6] ;
C = [c4, c8, c7] ;
C = [c5, c1, c2] ;
C = [c5, c1, c3] ;
C = [c5, c1, c4] ;
C = [c5, c1, c6] ;
C = [c5, c1, c7] ;
C = [c5, c1, c8] ;
C = [c5, c2, c1] ;
C = [c5, c2, c3] ;
C = [c5, c2, c4] ;
C = [c5, c2, c6] ;
C = [c5, c2, c7] ;
C = [c5, c2, c8] ;
C = [c5, c3, c1] ;
C = [c5, c3, c2] ;
C = [c5, c3, c4] ;
C = [c5, c3, c6] ;
C = [c5, c3, c7] ;
C = [c5, c3, c8] ;
C = [c5, c4, c1] ;
C = [c5, c4, c2] ;
C = [c5, c4, c3] ;
C = [c5, c4, c6] ;
C = [c5, c4, c7] ;
C = [c5, c4, c8] ;
C = [c5, c6, c1] ;
C = [c5, c6, c2] ;
C = [c5, c6, c3] ;
C = [c5, c6, c4] ;
C = [c5, c6, c7] ;
C = [c5, c6, c8] ;
C = [c5, c7, c1] ;
C = [c5, c7, c2] ;
C = [c5, c7, c3] ;
C = [c5, c7, c4] ;
C = [c5, c7, c6] ;
C = [c5, c7, c8] ;
C = [c5, c8, c1] ;
C = [c5, c8, c2] ;
C = [c5, c8, c3] ;
C = [c5, c8, c4] ;
C = [c5, c8, c6] ;
C = [c5, c8, c7] ;
C = [c6, c1, c2] ;
C = [c6, c1, c3] ;
C = [c6, c1, c4] ;
C = [c6, c1, c5] ;
C = [c6, c1, c7] ;
C = [c6, c1, c8] ;
C = [c6, c2, c1] ;
C = [c6, c2, c3] ;
C = [c6, c2, c4] ;
C = [c6, c2, c5] ;
C = [c6, c2, c7] ;
C = [c6, c2, c8] ;
C = [c6, c3, c1] ;
C = [c6, c3, c2] ;
C = [c6, c3, c4] ;
C = [c6, c3, c5] ;
C = [c6, c3, c7] ;
C = [c6, c3, c8] ;
C = [c6, c4, c1] ;
C = [c6, c4, c2] ;
C = [c6, c4, c3] ;
C = [c6, c4, c5] ;
C = [c6, c4, c7] ;
C = [c6, c4, c8] ;
C = [c6, c5, c1] ;
C = [c6, c5, c2] ;
C = [c6, c5, c3] ;
C = [c6, c5, c4] ;
C = [c6, c5, c7] ;
C = [c6, c5, c8] ;
C = [c6, c7, c1] ;
C = [c6, c7, c2] ;
C = [c6, c7, c3] ;
C = [c6, c7, c4] ;
C = [c6, c7, c5] ;
C = [c6, c7, c8] ;
C = [c6, c8, c1] ;
C = [c6, c8, c2] ;
C = [c6, c8, c3] ;
C = [c6, c8, c4] ;
C = [c6, c8, c5] ;
C = [c6, c8, c7] ;
C = [c7, c1, c2] ;
C = [c7, c1, c3] ;
C = [c7, c1, c4] ;
C = [c7, c1, c5] ;
C = [c7, c1, c6] ;
C = [c7, c1, c8] ;
C = [c7, c2, c1] ;
C = [c7, c2, c3] ;
C = [c7, c2, c4] ;
C = [c7, c2, c5] ;
C = [c7, c2, c6] ;
C = [c7, c2, c8] ;
C = [c7, c3, c1] ;
C = [c7, c3, c2] ;
C = [c7, c3, c4] ;
C = [c7, c3, c5] ;
C = [c7, c3, c6] ;
C = [c7, c3, c8] ;
C = [c7, c4, c1] ;
C = [c7, c4, c2] ;
C = [c7, c4, c3] ;
C = [c7, c4, c5] ;
C = [c7, c4, c6] ;
C = [c7, c4, c8] ;
C = [c7, c5, c1] ;
C = [c7, c5, c2] ;
C = [c7, c5, c3] ;
C = [c7, c5, c4] ;
C = [c7, c5, c6] ;
C = [c7, c5, c8] ;
C = [c7, c6, c1] ;
C = [c7, c6, c2] ;
C = [c7, c6, c3] ;
C = [c7, c6, c4] ;
C = [c7, c6, c5] ;
C = [c7, c6, c8] ;
C = [c7, c8, c1] ;
C = [c7, c8, c2] ;
C = [c7, c8, c3] ;
C = [c7, c8, c4] ;
C = [c7, c8, c5] ;
C = [c7, c8, c6] ;
C = [c8, c1, c2] ;
C = [c8, c1, c3] ;
C = [c8, c1, c4] ;
C = [c8, c1, c5] ;
C = [c8, c1, c6] ;
C = [c8, c1, c7] ;
C = [c8, c2, c1] ;
C = [c8, c2, c3] ;
C = [c8, c2, c4] ;
C = [c8, c2, c5] ;
C = [c8, c2, c6] ;
C = [c8, c2, c7] ;
C = [c8, c3, c1] ;
C = [c8, c3, c2] ;
C = [c8, c3, c4] ;
C = [c8, c3, c5] ;
C = [c8, c3, c6] ;
C = [c8, c3, c7] ;
C = [c8, c4, c1] ;
C = [c8, c4, c2] ;
C = [c8, c4, c3] ;
C = [c8, c4, c5] ;
C = [c8, c4, c6] ;
C = [c8, c4, c7] ;
C = [c8, c5, c1] ;
C = [c8, c5, c2] ;
C = [c8, c5, c3] ;
C = [c8, c5, c4] ;
C = [c8, c5, c6] ;
C = [c8, c5, c7] ;
C = [c8, c6, c1] ;
C = [c8, c6, c2] ;
C = [c8, c6, c3] ;
C = [c8, c6, c4] ;
C = [c8, c6, c5] ;
C = [c8, c6, c7] ;
C = [c8, c7, c1] ;
C = [c8, c7, c2] ;
C = [c8, c7, c3] ;
C = [c8, c7, c4] ;
C = [c8, c7, c5] ;
C = [c8, c7, c6] ;
*/
