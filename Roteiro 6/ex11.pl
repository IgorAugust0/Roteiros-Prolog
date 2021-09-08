% 11. Faca experimentacoes com as tres versoes do predicado max/3
% definidas na aula teorica: a vers˜ao sem corte, a vers˜ao com corte
% verde e a versao com corte vermelho. Como usual, “experimentar”
% significa “executar o trace”, assegurando-se que rastreie consultas na
% qual todos os tres argumentos estao instanciados para inteiros e,
% tambem, consultas onde o terceiro argumento eh uma variavel.


% [trace]  ?- max(2,3,3).
%    Call: (6) max(2, 3, 3) ?
% ^  Call: (7) 2=<3 ?
% ^  Exit: (7) 2=<3 ?
%    Exit: (6) max(2, 3, 3) ?
% true ;
%    Redo: (6) max(2, 3, 3) ?
%    Fail: (6) max(2, 3, 3) ?
% false.

% [trace]  ?- max(2,3,X).
%    Call: (6) max(2, 3, _G348) ?
% ^  Call: (7) 2=<3 ?
% ^  Exit: (7) 2=<3 ?
%    Exit: (6) max(2, 3, 3) ?
% X = 3 ;
%    Redo: (6) max(2, 3, _G348) ?
% ^  Call: (7) 2>3 ?
% ^  Fail: (7) 2>3 ?
%    Fail: (6) max(2, 3, _G348) ?
% false.

max(X,Y,Y) :- X  =< Y, !. % corte verde
max(X,Y,X) :- X > Y.

% [trace]  ?- max(2,3,3).
%    Call: (7) max(2, 3, 3) ?
% ^  Call: (8) 2=<3 ?
% ^  Exit: (8) 2=<3 ?
%    Exit: (7) max(2, 3, 3) ?
% true.

% [trace]  ?- max(2,3,X).
%    Call: (7) max(2, 3, _G351) ?
% ^  Call: (8) 2=<3 ?
% ^  Exit: (8) 2=<3 ?
%    Exit: (7) max(2, 3, 3) ?
% X = 3.

max(X,Y,Y) :- X =< Y, !.
max(X,Y,X).

% [trace]  ?- max(2,3,3).
%    Call: (7) max(2, 3, 3) ?
% ^  Call: (8) 2=<3 ?
% ^  Exit: (8) 2=<3 ?
%    Exit: (7) max(2, 3, 3) ?
% true.

% [trace]  ?- max(2,3,X).
%    Call: (7) max(2, 3, _G351) ?
% ^  Call: (8) 2=<3 ?
% ^  Exit: (8) 2=<3 ?
%    Exit: (7) max(2, 3, 3) ?
% X = 3.

% [trace]  ?- max(1,2,1).
%    Call: (7) max(1, 2, 1) ?
%    Exit: (7) max(1, 2, 1) ?
% true.

% Esta ultima consulta acima está errada, pois o predicado max/3 foi muito simplificado.
