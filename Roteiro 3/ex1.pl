% 5. Realize uma serie de rastreamentos envolvendo o predicado membro.
% Ou seja, realize rastreamentos envolvendo consultas simples que tem
% exito (tais como membro(a,[1,2,a,b])), consultas simples que falham
% (tais como membro(z,[1,2,a,b])) e consultas envolvendo variaveis (tais
% como membro(X,[1,2,a,b])). Em todos os casos assegure-se de ter
% compreendido o porque da recursao terminar.

/*
 [trace]  ?- membro(a,[1,2,a,b]).
   Call: (6) membro(a, [1, 2, a, b]) ?
   Call: (7) membro(a, [2, a, b]) ?
   Call: (8) membro(a, [a, b]) ?
   Exit: (8) membro(a, [a, b]) ?
   Exit: (7) membro(a, [2, a, b]) ?
   Exit: (6) membro(a, [1, 2, a, b]) ?
 true

 [trace]  ?- membro(z,[1,2,a,b]).
   Call: (6) membro(z, [1, 2, a, b]) ?
   Call: (7) membro(z, [2, a, b]) ?
   Call: (8) membro(z, [a, b]) ?
   Call: (9) membro(z, [b]) ?
   Call: (10) membro(z, []) ?
   Fail: (10) membro(z, []) ?
   Fail: (9) membro(z, [b]) ?
   Fail: (8) membro(z, [a, b]) ?
   Fail: (7) membro(z, [2, a, b]) ?
   Fail: (6) membro(z, [1, 2, a, b]) ?
 false.

 [trace]  ?- membro(X,[1,2,a,b]).
   Call: (6) membro(_G935, [1, 2, a, b]) ?
   Exit: (6) membro(1, [1, 2, a, b]) ?
 X = 1 ;
   Redo: (6) membro(_G935, [1, 2, a, b]) ?
   Call: (7) membro(_G935, [2, a, b]) ?
   Exit: (7) membro(2, [2, a, b]) ?
   Exit: (6) membro(2, [1, 2, a, b]) ?
 X = 2 ;
   Redo: (7) membro(_G935, [2, a, b]) ?
   Call: (8) membro(_G935, [a, b]) ?
   Exit: (8) membro(a, [a, b]) ?
   Exit: (7) membro(a, [2, a, b]) ?
   Exit: (6) membro(a, [1, 2, a, b]) ?
 X = a ;
   Redo: (8) membro(_G935, [a, b]) ?
   Call: (9) membro(_G935, [b]) ?
   Exit: (9) membro(b, [b]) ?
   Exit: (8) membro(b, [a, b]) ?
   Exit: (7) membro(b, [2, a, b]) ?
   Exit: (6) membro(b, [1, 2, a, b]) ?
 X = b ;
   Redo: (9) membro(_G935, [b]) ?
   Call: (10) membro(_G935, []) ?
   Fail: (10) membro(_G935, []) ?
   Fail: (9) membro(_G935, [b]) ?
   Fail: (8) membro(_G935, [a, b]) ?
   Fail: (7) membro(_G935, [2, a, b]) ?
   Fail: (6) membro(_G935, [1, 2, a, b]) ?
 false.
*/
