% 13. Depois, digite o segundo reconhecedor, aquele baseado em listas de
% diferencas, e exec e mais rastreamentos. Como voce vera, existe um
% ganho dramatico em eficiencia. Alem disso, mesmo se voce acha a ideia
% de listas de diferencas um pouco dificil de seguir, voce vera que os
% rastreamentos sao muito simples de entender, especialmente quando
% comparados aos monstros produzidos pela implementacao baseada em
% append.

s(X,Z) :- sn(X,Y), sv(Y,Z).

sn(X,Z) :- det(X,Y), n(Y,Z).

sv(X,Z) :-  v(X,Y), sn(Y,Z).

sv(X,Z) :-  v(X,Z).

det([a|W],W).
det([o|W],W).

n([mulher|W],W).
n([homem|W],W).

v([chuta|W],W).

/*
[trace]  ?- s([a,mulher,chuta,o,homem],[]).
   Call: (7) s([a, mulher, chuta, o, homem], []) ?
   Call: (8) sn([a, mulher, chuta, o, homem], _G441) ?
   Call: (9) det([a, mulher, chuta, o, homem], _G441) ?
   Exit: (9) det([a, mulher, chuta, o, homem], [mulher, chuta, o, homem]) ?
   Call: (9) n([mulher, chuta, o, homem], _G441) ?
   Exit: (9) n([mulher, chuta, o, homem], [chuta, o, homem]) ?
   Exit: (8) sn([a, mulher, chuta, o, homem], [chuta, o, homem]) ?
   Call: (8) sv([chuta, o, homem], []) ?
   Call: (9) v([chuta, o, homem], _G441) ?
   Exit: (9) v([chuta, o, homem], [o, homem]) ?
   Call: (9) sn([o, homem], []) ?
   Call: (10) det([o, homem], _G441) ?
   Exit: (10) det([o, homem], [homem]) ?
   Call: (10) n([homem], []) ?
   Exit: (10) n([homem], []) ?
   Exit: (9) sn([o, homem], []) ?
   Exit: (8) sv([chuta, o, homem], []) ?
   Exit: (7) s([a, mulher, chuta, o, homem], []) ?
true
*/
