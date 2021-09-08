% 12. Experimente todos os metodos discutidos na aula para lidar com as
% preferencias de Vicente. Isto eh, faca experimentos com o programa que
% usa a combinacao de corte com fail, com o programa que usa negacao
% como falha corretamente e tambem com o programa que torna-se erroneo
% quando utiliza negacao no lugar errado.

aprecia(vicente,X):- bigKahunaBurger(X), !, fail.
aprecia(vicente,X):- hamburguer(X).

hamburguer(X):- bigMac(X).
hamburguer(X):- bigKahunaBurger(X).
hamburguer(X):- whopper(X).

bigMac(a).
bigKahunaBurger(b).
bigMac(c).
whopper(d).

% [trace]  ?- aprecia(vicente,a).
%    Call: (7) aprecia(vicente, a) ?
%    Call: (8) bigKahunaBurger(a) ?
%    Fail: (8) bigKahunaBurger(a) ?
%    Redo: (7) aprecia(vicente, a) ?
%    Call: (8) hamburguer(a) ?
%    Call: (9) bigMac(a) ?
%    Exit: (9) bigMac(a) ?
%    Exit: (8) hamburguer(a) ?
%    Exit: (7) aprecia(vicente, a) ?
% true ;
%    Redo: (8) hamburguer(a) ?
%    Call: (9) bigKahunaBurger(a) ?
%    Fail: (9) bigKahunaBurger(a) ?
%    Redo: (8) hamburguer(a) ?
%    Call: (9) whopper(a) ?
%    Fail: (9) whopper(a) ?
%    Fail: (8) hamburguer(a) ?
%    Fail: (7) aprecia(vicente, a) ?
% false.

% [trace]  ?- aprecia(vicente,b).
%    Call: (7) aprecia(vicente, b) ?
%    Call: (8) bigKahunaBurger(b) ?
%    Exit: (8) bigKahunaBurger(b) ?
%    Call: (8) fail ?
%    Fail: (8) fail ?
%    Fail: (7) aprecia(vicente, b) ?
% false.

% [trace]  ?- aprecia(vicente,c).
%    Call: (7) aprecia(vicente, c) ?
%    Call: (8) bigKahunaBurger(c) ?
%    Fail: (8) bigKahunaBurger(c) ?
%    Redo: (7) aprecia(vicente, c) ?
%    Call: (8) hamburguer(c) ?
%    Call: (9) bigMac(c) ?
%    Exit: (9) bigMac(c) ?
%    Exit: (8) hamburguer(c) ?
%    Exit: (7) aprecia(vicente, c) ?
% true ;
%    Redo: (8) hamburguer(c) ?
%    Call: (9) bigKahunaBurger(c) ?
%    Fail: (9) bigKahunaBurger(c) ?
%    Redo: (8) hamburguer(c) ?
%    Call: (9) whopper(c) ?
%    Fail: (9) whopper(c) ?
%    Fail: (8) hamburguer(c) ?
%    Fail: (7) aprecia(vicente, c) ?
% false.

% [trace]  ?- aprecia(vicente,d).
%    Call: (7) aprecia(vicente, d) ?
%    Call: (8) bigKahunaBurger(d) ?
%    Fail: (8) bigKahunaBurger(d) ?
%    Redo: (7) aprecia(vicente, d) ?
%    Call: (8) hamburguer(d) ?
%    Call: (9) bigMac(d) ?
%    Fail: (9) bigMac(d) ?
%    Redo: (8) hamburguer(d) ?
%    Call: (9) bigKahunaBurger(d) ?
%    Fail: (9) bigKahunaBurger(d) ?
%    Redo: (8) hamburguer(d) ?
%    Call: (9) whopper(d) ?
%    Exit: (9) whopper(d) ?
%    Exit: (8) hamburguer(d) ?
%    Exit: (7) aprecia(vicente, d) ?
% true.

hamburguer(X) :- bigMac(X).
hamburguer(X) :- bigKahunaBurger(X).
hamburguer(X) :- whopper(X).

bigMac(a).
bigKahunaBurger(b).
bigMac(c).
whopper(d).

neg(Objetivo) :- Objetivo, !, fail.
neg(Objetivo).

aprecia(vicente,X) :-
  hamburguer(X),
  neg(bigKahunaBurger(X)).

% [trace]  ?- aprecia(vicente,a).
%    Call: (7) aprecia(vicente, a) ?
%    Call: (8) hamburguer(a) ?
%    Call: (9) bigMac(a) ?
%    Exit: (9) bigMac(a) ?
%    Exit: (8) hamburguer(a) ?
%    Call: (8) neg(bigKahunaBurger(a)) ?
%    Call: (9) bigKahunaBurger(a) ?
%    Fail: (9) bigKahunaBurger(a) ?
%    Redo: (8) neg(bigKahunaBurger(a)) ?
%    Exit: (8) neg(bigKahunaBurger(a)) ?
%    Exit: (7) aprecia(vicente, a) ?
% true ;
%    Redo: (8) hamburguer(a) ?
%    Call: (9) bigKahunaBurger(a) ?
%    Fail: (9) bigKahunaBurger(a) ?
%    Redo: (8) hamburguer(a) ?
%    Call: (9) whopper(a) ?
%    Fail: (9) whopper(a) ?
%    Fail: (8) hamburguer(a) ?
%    Fail: (7) aprecia(vicente, a) ?
% false.

% [trace]  ?- aprecia(vicente,b).
%    Call: (7) aprecia(vicente, b) ?
%    Call: (8) hamburguer(b) ?
%    Call: (9) bigMac(b) ?
%    Fail: (9) bigMac(b) ?
%    Redo: (8) hamburguer(b) ?
%    Call: (9) bigKahunaBurger(b) ?
%    Exit: (9) bigKahunaBurger(b) ?
%    Exit: (8) hamburguer(b) ?
%    Call: (8) neg(bigKahunaBurger(b)) ?
%    Call: (9) bigKahunaBurger(b) ?
%    Exit: (9) bigKahunaBurger(b) ?
%    Call: (9) fail ?
%    Fail: (9) fail ?
%    Fail: (8) neg(bigKahunaBurger(b)) ?
%    Redo: (8) hamburguer(b) ?
%    Call: (9) whopper(b) ?
%    Fail: (9) whopper(b) ?
%    Fail: (8) hamburguer(b) ?
%    Fail: (7) aprecia(vicente, b) ?
% false.

% [trace]  ?- aprecia(vicente,c).
%    Call: (7) aprecia(vicente, c) ?
%    Call: (8) hamburguer(c) ?
%    Call: (9) bigMac(c) ?
%    Exit: (9) bigMac(c) ?
%    Exit: (8) hamburguer(c) ?
%    Call: (8) neg(bigKahunaBurger(c)) ?
%    Call: (9) bigKahunaBurger(c) ?
%    Fail: (9) bigKahunaBurger(c) ?
%    Redo: (8) neg(bigKahunaBurger(c)) ?
%    Exit: (8) neg(bigKahunaBurger(c)) ?
%    Exit: (7) aprecia(vicente, c) ?
% true ;
%    Redo: (8) hamburguer(c) ?
%    Call: (9) bigKahunaBurger(c) ?
%    Fail: (9) bigKahunaBurger(c) ?
%    Redo: (8) hamburguer(c) ?
%    Call: (9) whopper(c) ?
%    Fail: (9) whopper(c) ?
%    Fail: (8) hamburguer(c) ?
%    Fail: (7) aprecia(vicente, c) ?
% false.

% [trace]  ?- aprecia(vicente,d).
%    Call: (7) aprecia(vicente, d) ?
%    Call: (8) hamburguer(d) ?
%    Call: (9) bigMac(d) ?
%    Fail: (9) bigMac(d) ?
%    Redo: (8) hamburguer(d) ?
%    Call: (9) bigKahunaBurger(d) ?
%    Fail: (9) bigKahunaBurger(d) ?
%    Redo: (8) hamburguer(d) ?
%    Call: (9) whopper(d) ?
%    Exit: (9) whopper(d) ?
%    Exit: (8) hamburguer(d) ?
%    Call: (8) neg(bigKahunaBurger(d)) ?
%    Call: (9) bigKahunaBurger(d) ?
%    Fail: (9) bigKahunaBurger(d) ?
%    Redo: (8) neg(bigKahunaBurger(d)) ?
%    Exit: (8) neg(bigKahunaBurger(d)) ?
%    Exit: (7) aprecia(vicente, d) ?
% true.

hamburguer(X) :- bigMac(X).
hamburguer(X) :- bigKahunaBurger(X).
hamburguer(X) :- whopper(X).

bigMac(a).
bigKahunaBurger(b).
bigMac(c).
whopper(d).

aprecia(vicente,X) :-
  hamburguer(X),
  \+  bigKahunaBurger(X).

% [trace]  ?- aprecia(vicente,a).
%    Call: (7) aprecia(vicente, a) ?
%    Call: (8) hamburguer(a) ?
%    Call: (9) bigMac(a) ?
%    Exit: (9) bigMac(a) ?
%    Exit: (8) hamburguer(a) ?
%    Call: (8) bigKahunaBurger(a) ?
%    Fail: (8) bigKahunaBurger(a) ?
%    Exit: (7) aprecia(vicente, a) ?
% true ;
%    Redo: (8) hamburguer(a) ?
%    Call: (9) bigKahunaBurger(a) ?
%    Fail: (9) bigKahunaBurger(a) ?
%    Redo: (8) hamburguer(a) ?
%    Call: (9) whopper(a) ?
%    Fail: (9) whopper(a) ?
%    Fail: (8) hamburguer(a) ?
%    Fail: (7) aprecia(vicente, a) ?
% false.

% [trace]  ?- aprecia(vicente,b).
%    Call: (7) aprecia(vicente, b) ?
%    Call: (8) hamburguer(b) ?
%    Call: (9) bigMac(b) ?
%    Fail: (9) bigMac(b) ?
%    Redo: (8) hamburguer(b) ?
%    Call: (9) bigKahunaBurger(b) ?
%    Exit: (9) bigKahunaBurger(b) ?
%    Exit: (8) hamburguer(b) ?
%    Call: (8) bigKahunaBurger(b) ?
%    Exit: (8) bigKahunaBurger(b) ?
%    Redo: (8) hamburguer(b) ?
%    Call: (9) whopper(b) ?
%    Fail: (9) whopper(b) ?
%    Fail: (8) hamburguer(b) ?
%    Fail: (7) aprecia(vicente, b) ?
% false.

% [trace]  ?- aprecia(vicente,c).
%    Call: (7) aprecia(vicente, c) ?
%    Call: (8) hamburguer(c) ?
%    Call: (9) bigMac(c) ?
%    Exit: (9) bigMac(c) ?
%    Exit: (8) hamburguer(c) ?
%    Call: (8) bigKahunaBurger(c) ?
%    Fail: (8) bigKahunaBurger(c) ?
%    Exit: (7) aprecia(vicente, c) ?
% true ;
%    Redo: (8) hamburguer(c) ?
%    Call: (9) bigKahunaBurger(c) ?
%    Fail: (9) bigKahunaBurger(c) ?
%    Redo: (8) hamburguer(c) ?
%    Call: (9) whopper(c) ?
%    Fail: (9) whopper(c) ?
%    Fail: (8) hamburguer(c) ?
%    Fail: (7) aprecia(vicente, c) ?
% false.

% [trace]  ?- aprecia(vicente,d).
%    Call: (7) aprecia(vicente, d) ?
%    Call: (8) hamburguer(d) ?
%    Call: (9) bigMac(d) ?
%    Fail: (9) bigMac(d) ?
%    Redo: (8) hamburguer(d) ?
%    Call: (9) bigKahunaBurger(d) ?
%    Fail: (9) bigKahunaBurger(d) ?
%    Redo: (8) hamburguer(d) ?
%    Call: (9) whopper(d) ?
%    Exit: (9) whopper(d) ?
%    Exit: (8) hamburguer(d) ?
%    Call: (8) bigKahunaBurger(d) ?
%    Fail: (8) bigKahunaBurger(d) ?
%    Exit: (7) aprecia(vicente, d) ?
% true.

hamburguer(X) :- bigMac(X).
hamburguer(X) :- bigKahunaBurger(X).
hamburguer(X) :- whopper(X).

bigMac(a).
bigKahunaBurger(b).
bigMac(c).
whopper(d).

aprecia(vicente, X) :- \+ bigKahunaBurger(X), hamburguer(X).

% [trace]  ?- aprecia(vicente,a).
%    Call: (7) aprecia(vicente, a) ?
%    Call: (8) bigKahunaBurger(a) ?
%    Fail: (8) bigKahunaBurger(a) ?
%    Call: (8) hamburguer(a) ?
%    Call: (9) bigMac(a) ?
%    Exit: (9) bigMac(a) ?
%    Exit: (8) hamburguer(a) ?
%    Exit: (7) aprecia(vicente, a) ?
% true ;
%    Redo: (8) hamburguer(a) ?
%    Call: (9) bigKahunaBurger(a) ?
%    Fail: (9) bigKahunaBurger(a) ?
%    Redo: (8) hamburguer(a) ?
%    Call: (9) whopper(a) ?
%    Fail: (9) whopper(a) ?
%    Fail: (8) hamburguer(a) ?
%    Fail: (7) aprecia(vicente, a) ?
% false.

% [trace]  ?- aprecia(vicente,b).
%    Call: (7) aprecia(vicente, b) ?
%    Call: (8) bigKahunaBurger(b) ?
%    Exit: (8) bigKahunaBurger(b) ?
%    Fail: (7) aprecia(vicente, b) ?
% false.

% [trace]  ?- aprecia(vicente,c).
%    Call: (6) aprecia(vicente, c) ?
%    Call: (7) bigKahunaBurger(c) ?
%    Fail: (7) bigKahunaBurger(c) ?
%    Call: (7) hamburguer(c) ?
%    Call: (8) bigMac(c) ?
%    Exit: (8) bigMac(c) ?
%    Exit: (7) hamburguer(c) ?
%    Exit: (6) aprecia(vicente, c) ?
% true ;
%    Redo: (7) hamburguer(c) ?
%    Call: (8) bigKahunaBurger(c) ?
%    Fail: (8) bigKahunaBurger(c) ?
%    Redo: (7) hamburguer(c) ?
%    Call: (8) whopper(c) ?
%    Fail: (8) whopper(c) ?
%    Fail: (7) hamburguer(c) ?
%    Fail: (6) aprecia(vicente, c) ?
% false.

% [trace]  ?- aprecia(vicente,d).
%    Call: (6) aprecia(vicente, d) ?
%    Call: (7) bigKahunaBurger(d) ?
%    Fail: (7) bigKahunaBurger(d) ?
%    Call: (7) hamburguer(d) ?
%    Call: (8) bigMac(d) ?
%    Fail: (8) bigMac(d) ?
%    Redo: (7) hamburguer(d) ?
%    Call: (8) bigKahunaBurger(d) ?
%    Fail: (8) bigKahunaBurger(d) ?
%    Redo: (7) hamburguer(d) ?
%    Call: (8) whopper(d) ?
%    Exit: (8) whopper(d) ?
%    Exit: (7) hamburguer(d) ?
%    Exit: (6) aprecia(vicente, d) ?
% true.
