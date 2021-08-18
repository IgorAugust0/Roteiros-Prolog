% 5. Escreva um predicado subconjunto/2 que recebe duas listas (de
% constantes) como argumentos e verifica se a primeira lista eh um
% subconjunto da segunda. Exemplos:

% ?- subconjunto([3,1], [4,1,9,8,3]).
% true

% ?- subconjunto([a,b], [b, d, e, f]).
% false

subconjunto([],_).
subconjunto([H1 | T1], T2) :-
  member(H1, T2),
  subconjunto(T1, T2).
