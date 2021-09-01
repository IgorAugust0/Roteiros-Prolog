% 10. Defina um predicado ocorre(L,N,X) que eh verdadeiro se, e somente
% se, X eh o elemento que ocorre na posicao N da lista L.

ocorre([H|_],1,H).

ocorre([_|T],N,X):-
    N1 is N-1,
    ocorre(T,N1,X).
