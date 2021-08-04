% Ex. 4
% Usando o predicado viagem/2 para consultar a base de dados
% anterior pode-se deduzir que eh possivel ir de Valmont para Raglan.
% No caso de estar planejando uma viagem, isto eh uma boa
% informacao, mas o que voce realmente deseja saber eh como
% exatamente ir de Valmont a Raglan. Escreva um predicado viagem/3 que
% diga a voce como viajar de um lugar para o outro. Exemplos de
% consultas:

% ?- viagem(valmont,paris,vai(valmont,metz,vai(metz,paris))).
% true
% ?- viagem(valmont,losAngeles,X).
% X = vai_de(valmont,metz,vai_de(metz,paris,vai_de(paris,losAngeles)))

deCarro(auckland,hamilton).
deCarro(hamilton,raglan).
deCarro(valmont,saarbruecken).
deCarro(valmont,metz).

deTrem(metz,frankfurt).
deTrem(saarbruecken,frankfurt).
deTrem(metz,paris).
deTrem(saarbruecken,paris).

deAviao(frankfurt,bangkok).
deAviao(frankfurt,singapore).
deAviao(paris,losAngeles).
deAviao(bangkok,auckland).
deAviao(losAngeles,auckland).

% Casos base

viagem(X,Y, vai_de(X,Y)) :- deCarro(X,Y).
viagem(X,Y, vai_de(X,Y)) :- deAviao(X,Y).
viagem(X,Y, vai_de(X,Y)) :- deTrem(X,Y).

% Casos indutivos

viagem(X,Y, vai_de(X,Z,G)) :-
  deCarro(X,Z),
  viagem(Z,Y,G).

viagem(X,Y, vai_de(X,Z,G)) :-
  deAviao(X,Z),
  viagem(Z,Y,G).

viagem(X,Y, vai_de(X,Z,G)) :-
  deTrem(X,Z),
  viagem(Z,Y,G).


% ?- viagem(valmont,paris,vai_de(valmont,metz,vai_de(metz,paris))).
% true

% ?- viagem(valmont,losAngeles,X).
% X = vai_de(valmont, saarbruecken, vai_de(saarbruecken, paris, vai_de(paris, losAngeles)))


