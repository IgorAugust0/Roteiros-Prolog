% Ex. 6

% Suponha que seja dada uma base de conhecimento com os seguintes
% fatos:

traducao(eins, um).
traducao(zwei, dois).
traducao(drei, tres).
traducao(vier, quatro).
traducao(funf, cinco).
traducao(sechs, seis).
traducao(sieben, sete).
traducao(acht, oito).
traducao(neun, nove).

% Escreva um predicado traduz_lista(A,P) que traduz uma lista de
% numeros escritos em alem˜ao, para uma lista correspondente em
% portugues. Alguns exemplos de consultas:

% ?- traduz_lista([eins,neun,zwei],X).
% X = [um,nove,dois]
%
% ?- traduz_lista(X,[um, sete, seis, dois]).
% X = [eins,sieben,sechs,zwei].
%
% ?-

% Dica: para responder a esta questao, pergunte-se “Como eu traduzo uma
% lista vazia de numeros?”. Este eh o caso base. Para listas nao
% vazias, primeiro traduza a cabeca da lista, depois use recursao para
% traduzir a cauda.

traduz_lista([], []).
traduz_lista([Hg | Tg], [He | Te]) :-
  traducao(Hg, He),
  traduz_lista(Tg, Te).


