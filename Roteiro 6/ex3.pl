% 3. Sem usar corte, escreva um predicado divide/3 que divide uma lista
% de inteiros em duas listas: uma contendo os numeros positivos e zero,
% e uma outra contendo numeros negativos. Por exemplo:

% ?- divide([3,4,-5,-1,0,4,-9],P,N).
% P = [3,4,0,4]
% N = [-5,-1,-9].

divide([], [], []).

divide([HP | TL], [HP | TP], N) :-
  HP >= 0,
  divide(TL, TP, N).

divide([HN | TL], P, [HN | TN]) :-
  HN < 0,
  divide(TL, P, TN).


% Agora, usando o corte, melhore este programa, sem alterar seu significado.

divide([], [], []).

divide([HP | TL], [HP | TP], N) :-
  HP >= 0, !, % corte verde
  divide(TL, TP, N).

divide([HN | TL], P, [HN | TN]) :-
  HN < 0, !, % corte verde
  divide(TL, P, TN).

% Obs.: Caso o divide for utilizado para verificar se P ou N está
% contido em L, os itens devem ser ordenados da mesma forma que em L.
