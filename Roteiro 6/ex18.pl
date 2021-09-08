% 18. Usando o predicado subconjunto que acabou de escrever, e findall,
% escreva um predicado conj_potência/2 que recebe um conjunto como seu
% primeiro argumento e retorna o conjunto potência deste conjunto como o
% segundo argumento. O conjunto potência de um conjunto é o conjunto de
% todos os seus subconjuntos. Por exemplo:

% ?- conj_potência([a,b,c],P).
% P = [[],[a],[b],[c],[a,b],[a,c],[b,c],[a,b,c]]

% N˜ao importa se os conjuntos s˜ao retornados em uma ordem diferente da
% anterior. Por exemplo,
%
% P = [[a],[b],[c],[a,b,c],[],[a,b],[a,c],[b,c]]
%
% também é válido.

geraSubconjunto([], []).
geraSubconjunto(Subconjunto, [_ | Conjunto]) :- geraSubconjunto(Subconjunto, Conjunto).
geraSubconjunto([H |Subconjunto], [H | Conjunto]) :- geraSubconjunto(Subconjunto, Conjunto).

verificaSubconjunto([], _).
verificaSubconjunto([H | Subconjunto], Conjunto) :-
    member(H, Conjunto),
    verificaSubconjunto(Subconjunto, Conjunto).

subconjunto(Subconjunto, Conjunto) :-
    var(Subconjunto),
    geraSubconjunto(Subconjunto, Conjunto).
subconjunto(Subconjunto, Conjunto) :-
    nonvar(Subconjunto),
    verificaSubconjunto(Subconjunto, Conjunto).

% conj_potência\2:
conj_potência(Conjunto, ConjuntoPotência) :-
    setof(Subconjunto, subconjunto(Subconjunto, Conjunto), ConjuntoPotência).
