% 17. Assuma que temos as seguintes definicoes de operadores:

:- op(300, xfx, [são, é_um]).
:- op(300, fx, gosta_de).
:- op(200, xfy, e).
:- op(100, fy, famoso).

% Quais dos termos seguintes s˜ao bem formados? Qua o operador
% principal? Reescreva-os com parenteses na ordem correta de avaliacao.

% ?- X e_um bruxo.
% == é_um(X, bruxo).
% Bem formado


% ?- harry e ron e hermione são amigos.
% == são(e(harry, e(ron, hermione)), amigos).
% Bem formado


% ?- harry é_um mago e gosta_de quadribol.
% == ???
% ERROR: Syntax error: Operator priority clash
% ERROR: harry é_um mago e
% ERROR: ** here **
% ERROR: gosta_de quadribol .
% Não é bem formado


% ?- dumbledore é_um famoso famoso mago.
% == são(e(harry, e(ron, hermione)), amigos).
% Bem formado
