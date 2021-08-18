% 12. Escreva um predicado somaUm/2 cujo primeiro argumento eh uma lista
% de inteiros e cujo segundo argumento eh a lista dos inteiros obtidas
% somando-se 1 a cada inteiro na primeira lista. Uma possivel consulta

% ?- somaUm([1,2,7,2],X).
% X = [2,3,8,3].

somaUm([],[]).
somaUm([H1|T1], [H2|T2]) :-
  is(H2,+(H1,1)),
  somaUm(T1,T2).
