% 13. Em aula discutimos o predicado maxAcum/3 que retorna o maior
% elemento em uma lista de inteiros. Modifique este codigo para criar o
% predicado minAcum/3 que retorna o menor elemento de uma lista de
% inteiros

% caso base
min([],A,A).

% casos recursivos
% maior que
min([H|T],A,Min) :-
    H < A,
    min(T,H,Min).

% menor que
min([H|T],A,Min) :-
    H >= A,
    min(T,A,Min).

minAcum(Lista, Min) :-
  Lista = [H|_],
  min(Lista, H, Min).
