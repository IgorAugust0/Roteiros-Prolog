% 13. Defina um predicado nu/2 (“nao unificavel”) que recebe dois termos
% como argumentos e sucede se os dois termos n˜ao unificam. Por exempl:

% ?- nu(foo,foo).
% false

% ?- nu(foo,blob).
% true

% ?- nu(foo,X).
% false

% Voce deve definir este predicado de tres formas diferentes:

% a) Primeiro (e mais facil), escreva-o com a ajuda de = e \+.

nu(X, Y) :- \+ X = Y.

% b) Segundo, escreva-o com a ajuda de =, mas n˜ao use +

neg(Goal)  :-  Goal,!,fail.
neg(Goal).

nu(X, Y) :- neg(X = Y).


% c) Terceiro, escreva usando uma combinacao de corte e fail. N˜ao use =
% e \+.

nu(X,X) :-
	!,fail.
nu(_,_).
