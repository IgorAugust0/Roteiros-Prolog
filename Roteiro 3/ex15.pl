% 15. Agora execute alguns rastreamentos. Exceto pelos nomes das
% variaveis, os rastreamentos que voce observara aqui deveriam ser
% muito similares aqueles observados quando executava o rastreador
% baseado em listas de diferencas.
% E agora eh hora de escrever algumas DCGs:

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
