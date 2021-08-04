% Ex. 3

% Imagine que voce resolva passear mundo afora e possua a seguinte
% base de conhecimento sobre opcoes de transporte entre cidades

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

% Escreva um predicado viagem/2 que determine se eh possivel viajar
% de um lugar a outro usando qualquer meio de transporte disponivel:
% carro, trem e aviao. Por exemplo, seu programa deveria responder
% true para a consulta viagem(valmont,raglan).

% Casos base
viagem(X,Y) :- deCarro(X,Y).
viagem(X,Y) :- deAviao(X,Y).
viagem(X,Y) :- deTrem(X,Y).

% Casos indutivos
viagem(X,Y) :-
  deCarro(X,Z),
  viagem(Z,Y).
viagem(X,Y) :-
  deAviao(X,Z),
  viagem(Z,Y).
viagem(X,Y) :-
  deTrem(X,Z),
  viagem(Z,Y).


% viagem(valmont, raglan):
% deCarro(valmont, metz), deCarro(valmont, saarbruecken)
% deTrem(metz, frankfurt), deTrem(saarbruecken, frankfurt)
% deAviao(frankfurt, bangkok)
% deAviao(bangkok, auckland)
% deCarro(auckland, hamilton)
% deCarro(hamilton, raglan)
% true.

