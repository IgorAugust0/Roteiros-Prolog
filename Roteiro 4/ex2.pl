% 2. Escreva um predicado soma_até(N,S) que calcule a soma de todos os
% numeros entre 1 e N.

% ?- soma_até(5,S).
% S = 15.

soma_até(N, S) :-
    S is (N + 1) * N / 2 .
