% 4. Escreva um programa para sem_repeticao(L1,L2), com L2 sendo o
% resultado da remocao de todos os elementos repetidos de L1. Por
% exemplo,

% ?- sem_repeticao([a,b,c,b], [a,c,b]).
% true

% Dica: use member

dupacum([],A,A).

dupacum([H|T],A,L):-
    member(H,A),
    dupacum(T,A,L),!.

dupacum([H|T],A,L):-
    dupacum(T,[H|A],L).

remove_dup(L,M):-
    dupacum(L,[],M).

