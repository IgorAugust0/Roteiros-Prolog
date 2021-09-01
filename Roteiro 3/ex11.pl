% 11. Escreva um predicado fatores_primos(N,F) que recebe um numero
% natural positivo N e devolve uma lista F contendo sua decomposicao em
% fatores primos

/*
?- fatores_primos(1, F).
F = []

?- fatores_primos(2, F).
F = [2]

?- fatores_primos(9, F).
F = [3, 3]

?- fatores_primos(12, F).
F = [2, 2, 3]

?- fatores_primos(901255, F).
F = [5, 17, 23, 461]
*/

% fatores_primos(N, L) :- N é a lista de fatores primos de N
%          (inteiro,lista) (+,?)

fatores_primos(N,L) :- N > 0,  fatores_primos(N,L,2).

% fatores_primos(N,L,K) :- L é a lista de fatores primos de N. Sabe-se
% que N nao tem nenhum fator primo menor que K.

fatores_primos(1,[],_) :- !.
fatores_primos(N,[F|L],F) :-                           % N is multiple of F
   R is N // F, N =:= R * F, !, fatores_primos(R,L,F).
fatores_primos(N,L,F) :-
   proximo_fator(N,F,NF), fatores_primos(N,L,NF).        % N is not multiple of F


% proximo_fator(N,F,NF) :- ao calcular os fatores primos de N, e se F
% nao divide N entao NF é o próximo maior candidato para ser o fator
% de N.

proximo_fator(_,2,3) :- !.
proximo_fator(N,F,NF) :- F * F < N, !, NF is F + 2.
proximo_fator(N,_,N).



