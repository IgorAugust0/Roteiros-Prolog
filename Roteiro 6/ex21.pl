% 21. Escreva um predicado somat�rio/2 que recebe um inteiro n > 0 e
% calcula a soma de todos os inteiros entre 1 e n. Exemplo:

% ?- somat�rio(3,X).
% X = 6
% ?- somat�rio(5,X).
% X = 15

% Escreva o predicado tal que os resultados sejam guardados na base de
% dados (� claro que n�ao deveria haver mais que uma entrada por
% resultado na base de dados para cada valor) e reutilizados sempre que
% poss�vel. Assim, por exemplo:

% ?- somat�rio(2,X).
% X = 3
% ?- listing.
% res_somat�rio(2,3).

% Depois disto, quando realizarmos a consulta

% ?- somat�rio(3,X).
% O Prolog n�ao calcur� tudo de novo, mas obter� o resultado
% somat�rio(2,3) da base de dados e somente somarar� 3 a este resultado.
% O Prolog ent�o responder�:

% X = 6

% ?- listing.
% res_somat�rio(2,3).
% res_somat�rio(3,6).

meuSomat�rio(0, Soma, Soma) :-
    !.

meuSomat�rio(N, Acum, Soma) :-
    res_somat�rio(N, NovaSoma),
    Soma is Acum + NovaSoma,
    !.

% caso indutivo
meuSomat�rio(N, Acum, Soma) :-
  is(DecN, -(N, 1)),
  is(NovoAcum, +(Acum, N)),
  meuSomat�rio(DecN, NovoAcum, Soma).

% principal
:- dynamic res_somat�rio/2.

somat�rio(N, Soma) :- res_somat�rio(N, Soma), !.

somat�rio(N, Soma) :- meuSomat�rio(N, 0, Soma),
  assert( res_somat�rio(N, Soma) ).

