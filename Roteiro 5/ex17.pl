% 17. Assuma que temos as seguintes definicoes de operadores:

:- op(300, xfx, [s�o, �_um]).
:- op(300, fx, gosta_de).
:- op(200, xfy, e).
:- op(100, fy, famoso).

% Quais dos termos seguintes s�ao bem formados? Qua o operador
% principal? Reescreva-os com parenteses na ordem correta de avaliacao.

% ?- X e_um bruxo.
% == �_um(X, bruxo).
% Bem formado


% ?- harry e ron e hermione s�o amigos.
% == s�o(e(harry, e(ron, hermione)), amigos).
% Bem formado


% ?- harry �_um mago e gosta_de quadribol.
% == ???
% ERROR: Syntax error: Operator priority clash
% ERROR: harry �_um mago e
% ERROR: ** here **
% ERROR: gosta_de quadribol .
% N�o � bem formado


% ?- dumbledore �_um famoso famoso mago.
% == s�o(e(harry, e(ron, hermione)), amigos).
% Bem formado
