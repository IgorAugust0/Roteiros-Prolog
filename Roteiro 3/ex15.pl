% 15. Uma outra opera¸c˜ao fundamental sobre vetore eh o produto
% escalar. Esta operacao combina dois vetores de mesma dimens˜ao e
% produz um numero como resultado. Por exemplo, o produto escalar de
% [2,5,6] com [3,4,1] eh 2*3 + 5*4 + 6*1, ou seja, 32. Escreva um
% predicado prodEsc/3 cujo primeiro argumento eh uma lista de inteiros,
% o segundo argumento eh uma lista de inteiros com o mesmo comprimento
% que a primeira e o terceiro argumento ´e o produto escalar do primeiro
% argumento pelo segundo.

% ?- prodEsc([2,5,6],[3,4,1],Resultado).
% Resultado = 32

% caso base
escAcum([],[],A,A).

% caso indutivo
escAcum([H1|T1], [H2|T2], A, Resultado) :-
  is(Novo,+(A,*(H1,H2))),
  escAcum(T1, T2, Novo, Resultado).

prodEsc(Vetor1, Vetor2, Resultado) :-
  escAcum(Vetor1, Vetor2, 0, Resultado).
