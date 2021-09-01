% 14. Em matematica, um vetor n-dimensional eh uma lista de tamanho n de
% numeros. Por exemplo, [2, 5, 12] eh um vetor tridimensional e
% [45, 27, 3, -4, 6] eh um vetor 5-dimensional. Ouma das operacoes
% basicas sobre vetores eh multiplicacao escalar. Nesta operacao, todos
% os elementos de um vetor s˜ao multiplicados por um numero. Escreva um
% predicado multiEsc/3 cujo primeiro argumento eh um inteiro, o segundo
% eh uma lista de inteiros e o terceiro eh o resultado da multiplicao
% escalar do segundo argumento pelo primeiro. Por exemplo,

% ?- multiEsc(3,[2,7,4],Resultado).
% Resultado = [6,21,12]

% caso base
multiEsc(Alpha, [], []).

% caso indutivo
multiEsc(Alpha, [H1|T1], [H2|T2]) :-
  is(H2,*(H1,Alpha)),
  multiEsc(Alpha, T1, T2).
