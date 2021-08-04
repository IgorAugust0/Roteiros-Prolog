% Ex. 7

% Escreva um predicado duasVezes(Entrada,Saida) cujo argumento
% Entrada eh uma lista e cujo argumento Saida eh uma lista consistindo
% de todos os elementos da primeira lista escritos duas vezes. Por
% exemplo,


% ?- duasVezes([a,4,bonde],X).
% X = [a,a,4,4,bonde,bonde].

% ?- duasVezes([1,2,1,1],X).
% X = [1,1,2,2,1,1,1,1].


% Dica: para responder a esta questao, primeiro pergunte-se “O que
% deveria acontecer quando o primeiro argumento eh a lista vazia?”. Este
% eh o caso base. Para listas nao vazias, pense sobre o que voce
% deveria fazer com a cabeca e use recursao para tratar a cauda.

duasVezes([],[]).
duasVezes([Ha | Ta], [Ha, Ha | Tb]) :- duasVezes(Ta, Tb).
