% 2. Escreva um predicado soma_at�(N,S) que calcule a soma de todos os
% numeros entre 1 e N.

% ?- soma_at�(5,S).
% S = 15.

soma_at�(N, S) :-
    S is (N + 1) * N / 2 .
