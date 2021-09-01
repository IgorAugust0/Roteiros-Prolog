% 6. Escreva um predicado superconjunto/2 que recebe duas listas (de
% constantes) como argumentos e verifica se a primeira lista eh um
% superconjunto da segunda. Exemplos:

% ?- superconjunto([4,1,9,8,3], [3,1]).
% true

% ?- superconjunto([b,d,e,f], [a,b]).
% false

% ?- superconjunto([a,f,b,e], [a,b,e,f]).
% true

superconjunto(_,[]).
superconjunto(T1, [H2 | T2]) :-
  member(H2, T1),
  superconjunto(T1, T2).
