% 2. Primeiro, explique o que o seguinte programa faz:

classe(Numero,positivo):- Numero > 0.
classe(0,zero).
classe(Numero, negativo):- Numero < 0.

% Esse programa examina se um número especificado é positivo, zero, ou
% negativo.


% Depois, melhore-o pela adicao de cortes.
class(Numero,positivo) :- Numero > 0, !.
class(0,zero) :- !.
class(Numero,negativo) :- Numero < 0, !.

