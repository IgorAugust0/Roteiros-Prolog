% 21. Escreva um predicado somatório/2 que recebe um inteiro n > 0 e
% calcula a soma de todos os inteiros entre 1 e n. Exemplo:

% ?- somatório(3,X).
% X = 6
% ?- somatório(5,X).
% X = 15

% Escreva o predicado tal que os resultados sejam guardados na base de
% dados (é claro que n˜ao deveria haver mais que uma entrada por
% resultado na base de dados para cada valor) e reutilizados sempre que
% possível. Assim, por exemplo:

% ?- somatório(2,X).
% X = 3
% ?- listing.
% res_somatório(2,3).

% Depois disto, quando realizarmos a consulta

% ?- somatório(3,X).
% O Prolog n˜ao calcurá tudo de novo, mas obterá o resultado
% somatório(2,3) da base de dados e somente somarará 3 a este resultado.
% O Prolog então responderá:

% X = 6

% ?- listing.
% res_somatório(2,3).
% res_somatório(3,6).

meuSomatório(0, Soma, Soma) :-
    !.

meuSomatório(N, Acum, Soma) :-
    res_somatório(N, NovaSoma),
    Soma is Acum + NovaSoma,
    !.

% caso indutivo
meuSomatório(N, Acum, Soma) :-
  is(DecN, -(N, 1)),
  is(NovoAcum, +(Acum, N)),
  meuSomatório(DecN, NovoAcum, Soma).

% principal
:- dynamic res_somatório/2.

somatório(N, Soma) :- res_somatório(N, Soma), !.

somatório(N, Soma) :- meuSomatório(N, 0, Soma),
  assert( res_somatório(N, Soma) ).

