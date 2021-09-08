% 18. Usando o predicado subconjunto que acabou de escrever, e findall,
% escreva um predicado conj_pot�ncia/2 que recebe um conjunto como seu
% primeiro argumento e retorna o conjunto pot�ncia deste conjunto como o
% segundo argumento. O conjunto pot�ncia de um conjunto � o conjunto de
% todos os seus subconjuntos. Por exemplo:

% ?- conj_pot�ncia([a,b,c],P).
% P = [[],[a],[b],[c],[a,b],[a,c],[b,c],[a,b,c]]

% N�ao importa se os conjuntos s�ao retornados em uma ordem diferente da
% anterior. Por exemplo,
%
% P = [[a],[b],[c],[a,b,c],[],[a,b],[a,c],[b,c]]
%
% tamb�m � v�lido.

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

% conj_pot�ncia\2:
conj_pot�ncia(Conjunto, ConjuntoPot�ncia) :-
    setof(Subconjunto, subconjunto(Subconjunto, Conjunto), ConjuntoPot�ncia).
