% 7. Escreva um predicado romano(N,R) que recebe um numero natural
% positivo N e devolve uma lista R representando o numero recebido em
% numeracao romana.

% ?- romano(21, R).
% R = ['X', 'X', 'I']

% ?- romano(800, R).
% R = ['D', 'C', 'C', 'C']

% ?- romano(2021, R).
% R = ['M', 'M', 'X', 'X', 'I']

para_romano(N, _):- N < 0, !, fail.

para_romano(0, []).

para_romano(N, ['I'|Romano]) :-
    N < 4, M is N - 1,
    para_romano(M, Romano).

para_romano(4, ['IV']).

para_romano(5, ['V']).

para_romano(N, ['V'|Romano]) :-
    N < 9, M is N - 5,
    para_romano(M, Romano).

para_romano(9, ['IX']).

para_romano(N, ['X'|Romano]) :-
    N < 40, M is N - 10,
    para_romano(M, Romano).

para_romano(N, ['XL'|Romano]) :-
    N < 50, M is N - 40,
    para_romano(M, Romano).
para_romano(N, ['L'|Romano]) :-
    N < 90, M is N - 50,
    para_romano(M, Romano).

para_romano(N, ['XC'|Romano]) :-
    N < 100, M is N - 90,
    para_romano(M, Romano).

para_romano(N, ['C'|Romano]) :-
    N < 400, M is N - 100,
    para_romano(M, Romano).

para_romano(N, ['CD'|Romano]) :-
    N < 500, M is N - 400,
    para_romano(M, Romano).

para_romano(N, ['DD'|Romano]) :-
    N < 900, M is N - 500,
    para_romano(M, Romano).

para_romano(N, ['CM'|Romano]) :-
    N < 1000, M is N - 900,
    para_romano(M, Romano).

para_romano(N, ['M'|Romano]) :-
    N < 4000, M is N - 1000,
    para_romano(M, Romano).

romano(N, R) :- para_romano(N, L), atomic_list_concat(L, R).

romano(N) :- romano(N, R), write(R).
