% 12. Primeiro digite o reconhecedor simples baseado em append,
% discutido em sala de aula, e depois execute alguns rastreamentos. Como
% voce descobrira, n˜ao exageramos ao dizer que a performance da
% gramatica baseada em append era muito pobre. Mesmo para sentencas
% simples como A mulher chuta o homem, voce vera que o rastreamento e
% muito longo e muito dificil de seguir.

s(Z) :- append(X,Y,Z), sn(X), sv(Y).

sn(Z) :- append(X,Y,Z), det(X), n(Y).

sv(Z) :-  append(X,Y,Z), v(X), sn(Y).
sv(Z) :-  v(Z).

det([a]).
det([o]).

n([mulher]).
n([homem]).

v([chuta]).

/*
[trace]  ?- s([a,mulher,chuta,o,homem]).
   Call: (6) s([a, mulher, chuta, o, homem]) ?
   Call: (7) lists:append(_G652, _G653, [a, mulher, chuta, o, homem]) ?
   Exit: (7) lists:append([], [a, mulher, chuta, o, homem], [a, mulher, chuta, o, homem]) ?
    Call: (7) sn([]) ?
    Call: (8) lists:append(_G652, _G653, []) ?
    Exit: (8) lists:append([], [], []) ?
    Call: (8) det([]) ?
    Fail: (8) det([]) ?
    Fail: (8) lists:append(_G652, _G653, []) ?
    Fail: (7) sn([]) ?
    Exit: (7) lists:append([a], [mulher, chuta, o, homem], [a, mulher, chuta, o, homem]) ?
    Call: (7) sn([a]) ?
    Call: (8) lists:append(_G655, _G656, [a]) ?
    Exit: (8) lists:append([], [a], [a]) ?
    Call: (8) det([]) ?
    Fail: (8) det([]) ?
    Exit: (8) lists:append([a], [], [a]) ?
    Call: (8) det([a]) ?
    Exit: (8) det([a]) ?
    Call: (8) n([]) ?
    Fail: (8) n([]) ?
    Redo: (8) det([a]) ?
    Fail: (8) det([a]) ?
    Redo: (8) lists:append([a|_G649], _G659, [a]) ?
    Fail: (8) lists:append(_G655, _G656, [a]) ?
    Fail: (7) sn([a]) ?
    Redo: (7) lists:append([a|_G646], _G656, [a, mulher, chuta, o, homem]) ?
    Exit: (7) lists:append([a, mulher], [chuta, o, homem], [a, mulher, chuta, o, homem]) ?
    Call: (7) sn([a, mulher]) ?
    Call: (8) lists:append(_G658, _G659, [a, mulher]) ?
    Exit: (8) lists:append([], [a, mulher], [a, mulher]) ?
    Call: (8) det([]) ?
    Fail: (8) det([]) ?
    Exit: (8) lists:append([a], [mulher], [a, mulher]) ?
    Call: (8) det([a]) ?
    Exit: (8) det([a]) ?
    Call: (8) n([mulher]) ?
    Exit: (8) n([mulher]) ?
    Exit: (7) sn([a, mulher]) ?
    Call: (7) sv([chuta, o, homem]) ?
    Call: (8) lists:append(_G661, _G662, [chuta, o, homem]) ?
    Exit: (8) lists:append([], [chuta, o, homem], [chuta, o, homem]) ?
    Call: (8) v([]) ?
    Fail: (8) v([]) ?
    Exit: (8) lists:append([chuta], [o, homem], [chuta, o, homem]) ?
    Call: (8) v([chuta]) ?
    Exit: (8) v([chuta]) ?
    Call: (8) sn([o, homem]) ?
    Call: (9) lists:append(_G664, _G665, [o, homem]) ?
    Exit: (9) lists:append([], [o, homem], [o, homem]) ?
    Call: (9) det([]) ?
    Fail: (9) det([]) ?
    Exit: (9) lists:append([o], [homem], [o, homem]) ?
    Call: (9) det([o]) ?
    Exit: (9) det([o]) ?
    Call: (9) n([homem]) ?
    Exit: (9) n([homem]) ?
    Exit: (8) sn([o, homem]) ?
    Exit: (7) sv([chuta, o, homem]) ?
    Exit: (6) s([a, mulher, chuta, o, homem]) ?
true
*/




