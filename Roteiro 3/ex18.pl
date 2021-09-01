% 18.Crie consultas para responder as seguintes perguntas:

remove(X,[X|R],R).
remove(X,[F|R],[F|S]) :- remove(X,R,S).

permutacao([],[]).
permutacao(Xs,[Y|Zs]):-
   remove(Y,Xs,Ys),
   permutacao(Ys,Zs).

% (a) Quais os anagramas da palavra amor ? %
/*
Amor possui 24 anagramas, sendo eles:

?- permutacao([a,m,o,r],P).
P = [a, m, o, r] ;
P = [a, m, r, o] ;
P = [a, o, m, r] ;
P = [a, o, r, m] ;
P = [a, r, m, o] ;
P = [a, r, o, m] ;
P = [m, a, o, r] ;
P = [m, a, r, o] ;
P = [m, o, a, r] ;
P = [m, o, r, a] ;
P = [m, r, a, o] ;
P = [m, r, o, a] ;
P = [o, a, m, r] ;
P = [o, a, r, m] ;
P = [o, m, a, r] ;
P = [o, m, r, a] ;
P = [o, r, a, m] ;
P = [o, r, m, a] ;
P = [r, a, m, o] ;
P = [r, a, o, m] ;
P = [r, m, a, o] ;
P = [r, m, o, a] ;
P = [r, o, a, m] ;
P = [r, o, m, a] ;
false.
*/


% (b) Carlos e Rose tem filhos: Sergio, Adriano e Fabiola. Eles querem
% tirar uma foto de recordacao na qual todos aparecam lado a lado.
% Quais s˜ao as diferentes fotos que poder˜ao ser registrada
/*
Eles poderao tirar 120 diferentes fotos, sendo elas:

?- permutacao([Carlos, Rose, Sergio, Adriano, Fabiola],P).
P = [Carlos, Rose, Sergio, Adriano, Fabiola] ;
P = [Carlos, Rose, Sergio, Fabiola, Adriano] ;
P = [Carlos, Rose, Adriano, Sergio, Fabiola] ;
P = [Carlos, Rose, Adriano, Fabiola, Sergio] ;
P = [Carlos, Rose, Fabiola, Sergio, Adriano] ;
P = [Carlos, Rose, Fabiola, Adriano, Sergio] ;
P = [Carlos, Sergio, Rose, Adriano, Fabiola] ;
P = [Carlos, Sergio, Rose, Fabiola, Adriano] ;
P = [Carlos, Sergio, Adriano, Rose, Fabiola] ;
P = [Carlos, Sergio, Adriano, Fabiola, Rose] ;
P = [Carlos, Sergio, Fabiola, Rose, Adriano] ;
P = [Carlos, Sergio, Fabiola, Adriano, Rose] ;
P = [Carlos, Adriano, Rose, Sergio, Fabiola] ;
P = [Carlos, Adriano, Rose, Fabiola, Sergio] ;
P = [Carlos, Adriano, Sergio, Rose, Fabiola] ;
P = [Carlos, Adriano, Sergio, Fabiola, Rose] ;
P = [Carlos, Adriano, Fabiola, Rose, Sergio] ;
P = [Carlos, Adriano, Fabiola, Sergio, Rose] ;
P = [Carlos, Fabiola, Rose, Sergio, Adriano] ;
P = [Carlos, Fabiola, Rose, Adriano, Sergio] ;
P = [Carlos, Fabiola, Sergio, Rose, Adriano] ;
P = [Carlos, Fabiola, Sergio, Adriano, Rose] ;
P = [Carlos, Fabiola, Adriano, Rose, Sergio] ;
P = [Carlos, Fabiola, Adriano, Sergio, Rose] ;
P = [Rose, Carlos, Sergio, Adriano, Fabiola] ;
P = [Rose, Carlos, Sergio, Fabiola, Adriano] ;
P = [Rose, Carlos, Adriano, Sergio, Fabiola] ;
P = [Rose, Carlos, Adriano, Fabiola, Sergio] ;
P = [Rose, Carlos, Fabiola, Sergio, Adriano] ;
P = [Rose, Carlos, Fabiola, Adriano, Sergio] ;
P = [Rose, Sergio, Carlos, Adriano, Fabiola] ;
P = [Rose, Sergio, Carlos, Fabiola, Adriano] ;
P = [Rose, Sergio, Adriano, Carlos, Fabiola] ;
P = [Rose, Sergio, Adriano, Fabiola, Carlos] ;
P = [Rose, Sergio, Fabiola, Carlos, Adriano] ;
P = [Rose, Sergio, Fabiola, Adriano, Carlos] ;
P = [Rose, Adriano, Carlos, Sergio, Fabiola] ;
P = [Rose, Adriano, Carlos, Fabiola, Sergio] ;
P = [Rose, Adriano, Sergio, Carlos, Fabiola] ;
P = [Rose, Adriano, Sergio, Fabiola, Carlos] ;
P = [Rose, Adriano, Fabiola, Carlos, Sergio] ;
P = [Rose, Adriano, Fabiola, Sergio, Carlos] ;
P = [Rose, Fabiola, Carlos, Sergio, Adriano] ;
P = [Rose, Fabiola, Carlos, Adriano, Sergio] ;
P = [Rose, Fabiola, Sergio, Carlos, Adriano] ;
P = [Rose, Fabiola, Sergio, Adriano, Carlos] ;
P = [Rose, Fabiola, Adriano, Carlos, Sergio] ;
P = [Rose, Fabiola, Adriano, Sergio, Carlos] ;
P = [Sergio, Carlos, Rose, Adriano, Fabiola] ;
P = [Sergio, Carlos, Rose, Fabiola, Adriano] ;
P = [Sergio, Carlos, Adriano, Rose, Fabiola] ;
P = [Sergio, Carlos, Adriano, Fabiola, Rose] ;
P = [Sergio, Carlos, Fabiola, Rose, Adriano] ;
P = [Sergio, Carlos, Fabiola, Adriano, Rose] ;
P = [Sergio, Rose, Carlos, Adriano, Fabiola] ;
P = [Sergio, Rose, Carlos, Fabiola, Adriano] ;
P = [Sergio, Rose, Adriano, Carlos, Fabiola] ;
P = [Sergio, Rose, Adriano, Fabiola, Carlos] ;
P = [Sergio, Rose, Fabiola, Carlos, Adriano] ;
P = [Sergio, Rose, Fabiola, Adriano, Carlos] ;
P = [Sergio, Adriano, Carlos, Rose, Fabiola] ;
P = [Sergio, Adriano, Carlos, Fabiola, Rose] ;
P = [Sergio, Adriano, Rose, Carlos, Fabiola] ;
P = [Sergio, Adriano, Rose, Fabiola, Carlos] ;
P = [Sergio, Adriano, Fabiola, Carlos, Rose] ;
P = [Sergio, Adriano, Fabiola, Rose, Carlos] ;
P = [Sergio, Fabiola, Carlos, Rose, Adriano] ;
P = [Sergio, Fabiola, Carlos, Adriano, Rose] ;
P = [Sergio, Fabiola, Rose, Carlos, Adriano] ;
P = [Sergio, Fabiola, Rose, Adriano, Carlos] ;
P = [Sergio, Fabiola, Adriano, Carlos, Rose] ;
P = [Sergio, Fabiola, Adriano, Rose, Carlos] ;
P = [Adriano, Carlos, Rose, Sergio, Fabiola] ;
P = [Adriano, Carlos, Rose, Fabiola, Sergio] ;
P = [Adriano, Carlos, Sergio, Rose, Fabiola] ;
P = [Adriano, Carlos, Sergio, Fabiola, Rose] ;
P = [Adriano, Carlos, Fabiola, Rose, Sergio] ;
P = [Adriano, Carlos, Fabiola, Sergio, Rose] ;
P = [Adriano, Rose, Carlos, Sergio, Fabiola] ;
P = [Adriano, Rose, Carlos, Fabiola, Sergio] ;
P = [Adriano, Rose, Sergio, Carlos, Fabiola] ;
P = [Adriano, Rose, Sergio, Fabiola, Carlos] ;
P = [Adriano, Rose, Fabiola, Carlos, Sergio] ;
P = [Adriano, Rose, Fabiola, Sergio, Carlos] ;
P = [Adriano, Sergio, Carlos, Rose, Fabiola] ;
P = [Adriano, Sergio, Carlos, Fabiola, Rose] ;
P = [Adriano, Sergio, Rose, Carlos, Fabiola] ;
P = [Adriano, Sergio, Rose, Fabiola, Carlos] ;
P = [Adriano, Sergio, Fabiola, Carlos, Rose] ;
P = [Adriano, Sergio, Fabiola, Rose, Carlos] ;
P = [Adriano, Fabiola, Carlos, Rose, Sergio] ;
P = [Adriano, Fabiola, Carlos, Sergio, Rose] ;
P = [Adriano, Fabiola, Rose, Carlos, Sergio] ;
P = [Adriano, Fabiola, Rose, Sergio, Carlos] ;
P = [Adriano, Fabiola, Sergio, Carlos, Rose] ;
P = [Adriano, Fabiola, Sergio, Rose, Carlos] ;
P = [Fabiola, Carlos, Rose, Sergio, Adriano] ;
P = [Fabiola, Carlos, Rose, Adriano, Sergio] ;
P = [Fabiola, Carlos, Sergio, Rose, Adriano] ;
P = [Fabiola, Carlos, Sergio, Adriano, Rose] ;
P = [Fabiola, Carlos, Adriano, Rose, Sergio] ;
P = [Fabiola, Carlos, Adriano, Sergio, Rose] ;
P = [Fabiola, Rose, Carlos, Sergio, Adriano] ;
P = [Fabiola, Rose, Carlos, Adriano, Sergio] ;
P = [Fabiola, Rose, Sergio, Carlos, Adriano] ;
P = [Fabiola, Rose, Sergio, Adriano, Carlos] ;
P = [Fabiola, Rose, Adriano, Carlos, Sergio] ;
P = [Fabiola, Rose, Adriano, Sergio, Carlos] ;
P = [Fabiola, Sergio, Carlos, Rose, Adriano] ;
P = [Fabiola, Sergio, Carlos, Adriano, Rose] ;
P = [Fabiola, Sergio, Rose, Carlos, Adriano] ;
P = [Fabiola, Sergio, Rose, Adriano, Carlos] ;
P = [Fabiola, Sergio, Adriano, Carlos, Rose] ;
P = [Fabiola, Sergio, Adriano, Rose, Carlos] ;
P = [Fabiola, Adriano, Carlos, Rose, Sergio] ;
P = [Fabiola, Adriano, Carlos, Sergio, Rose] ;
P = [Fabiola, Adriano, Rose, Carlos, Sergio] ;
P = [Fabiola, Adriano, Rose, Sergio, Carlos] ;
P = [Fabiola, Adriano, Sergio, Carlos, Rose] ;
P = [Fabiola, Adriano, Sergio, Rose, Carlos] ;
false.

*/





