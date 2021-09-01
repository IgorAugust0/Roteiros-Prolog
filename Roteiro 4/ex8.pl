% 8. Considere uma representacao de conjuntos como listas. Defina os
% seguintes predicados: (a) disjunto(L,K) eh verdadeiro se, e somente
% se, L e K s˜ao disjuntos, o seja nao possuem elementos em comum.

/*
(a) disjunto(L,K) eh verdadeiro se, e somente se, L e K s˜ao disjuntos,
ou seja, nao possuem elementos em comum.

?- disjunto([1,3,5],[2,4,6]).
true
?- disjunto([1,3,5],[2,4,5]).
false

*/

disjunto([],[]).
disjunto([], _).

disjunto([H|T], E) :-
    E \= H,
    disjunto(T, E).

/*
(b) uniao(L,K,M) eh verdadeiro se, e somente se, M eh a uni˜ao de L e K.

?- união([1,3,5],[2,4,6],[1,3,2,4,6,5]).
true

?- união([1,3,5],[2,4,5],[1,3,2,4,6,5]).
false
*/

uniao([], A, A) :- !.
uniao([A|B], C, D) :-
        memberchk(A, B), !,
        uniao(B, C, D).
uniao([A|B], C, [A|D]) :-
        uniao(B, C, D).


/*
(c) intersecao(L,K,M) eh verdadeiro se, e somente se, M eh a
intersecao de L e K.

?- intersecao([1,3,5],[2,4,6],[]).
true
?- intersecao([1,3,5],[2,4,5],[5]).
true
?- intersecao([1,3,5],[2,4,5],[5,6]).
false
*/

intersecao([], _, []).

intersecao([L|L1], K, [L|M]):-
  member(L, K),
  intersecao(L1, K, M).

intersecao([_|L1], K, M):-
    intersecao(L1, K, M).


/*
(d) diferenca(L,K,M) eh verdadeiro se, e somente se, M eh a diferenca
entre L e K.

?- diferenca([1,3,5],[2,4,6],[1,3,5]).
true
?- diferenca([1,3,5],[2,4,5],[1,3]).
true
?- diferenca([1,3,5],[1,4,5],[4]).
false
*/
