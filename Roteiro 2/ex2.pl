% Ex. 2

% Imagine que a base de conhecimentos seguinte descreva um labirinto.
% Os fatos determinam quais pontos est˜ao conectados, ou seja, os pontos
% que se pode alcacar com exatamente um passo. Alem disto, imagine
% que todos os caminhos sao ruas de mao unica, tal que voce somente
% pode caminhar por elas em uma direcao. Assim, voce podera ir do
% ponto 1 para o ponto 2, mas nao podera ir de 2 para 1.

conectado(1,2).
conectado(3,4).
conectado(5,6).
conectado(7,8).
conectado(9,10).
conectado(12,13).
conectado(13,14).
conectado(15,16).
conectado(17,18).
conectado(19,20).
conectado(4,1).
conectado(6,3).
conectado(4,7).
conectado(6,11).
conectado(14,9).
conectado(11,15).
conectado(16,12).
conectado(14,17).
conectado(16,19).

% Escreva um predicado caminho/2 que diga até onde se pode chegar
% partindo de um determinado ponto, seguindo as conex˜oes na base de
% conhecimento. Pode-se ir do ponto 5 para o ponto 10? Em quais
% outros pontos se pode chegar partindo do ponto 1? E quais pontos
% podem ser alcançados saindo do ponto 13?

caminho(X,Y) :- conectado(X,Y).
caminho(X,Y) :-
  conectado(X,Z),
  caminho(Z, Y).

% caminho(5, 10). -> true
% caminho(1, X). -> 2
% caminho(13, X). -> 14, 9, 17, 10, 18
