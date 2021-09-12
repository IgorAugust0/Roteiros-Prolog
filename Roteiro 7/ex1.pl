/*
1. Escreva um programa que leia um arquivo texto palavra por palavra e
insira todas as palavras lidas juntamente com suas frequências na
memória do Prolog. Use um predicado dinâmico palavra/2 para armazenar
as palavras, com o primeiro argumento é uma palavra e o segundo é a
frequência desta palavra no arquivo. O predicado principal será
chamado de histograma/1 e recebe como argumento o nome do arquivo. O
programa deve ignorar sinais de pontuação e espaços em branco.

Como exemplo, suponha que o conteúdo abaixo pertença ao arquivo
arq1.txt:


tinha suspirado, tinha beijado o papel devotamente! Era a primeira vez que
lhe escreviam aquelas sentimentalidades, e o seu orgulho dilatava-se ao
calor amoroso que saía delas, como um corpo ressequido que se estira num
banho tépido; sentia um acréscimo de estima por si mesma, e parecia-lhe que
entrava enfim numa existência superiormente interessante, onde cada hora
tinha o seu encanto diferente, cada passo condizia a um êxtase, e a alma
se cobria de um luxo radioso de sensações!


Então, as consultas abaixo deveriam ser verdadeiras para ele:

?- histograma('arq1.txt').
true

?- palavra(a, Freq).
Freq=3

?- palavra(acréscimo, Freq).
Freq=1

?- palavra(cada, Freq).
Freq=2

?- palavra(tinha, Freq).
Freq=3

?- palavra(um, Freq).
Freq=4

?- palavra(devotamente, Freq).
Freq=1
*/

:- dynamic palavra/2.

addPalavraParaMemoria(P) :-
  palavra(P, X),
  retract(palavra(P, X)),
  Y is X + 1,
  assert( palavra(P, Y) ), !.

addPalavraParaMemoria(P) :-
  assert( palavra(P, 1) ), !.

histograma(X) :-
  open(X, read, Fluxo),
  lerPalavras(Fluxo),
  close(Fluxo).

lerPalavras(NoFluxo) :-
  \+ at_end_of_stream(NoFluxo),
  lerPalavra(NoFluxo, P),
  addPalavraParaMemoria(P),
  lerPalavras(NoFluxo).

lerPalavra(NoFluxo, P) :-
  get_code(NoFluxo, Caracter),
  verificaELeiaResto(Caracter, Caracteres, NoFluxo),
  atom_codes(P, Caracteres).

verificaELeiaResto(10, [], _) :- !.
verificaELeiaResto(32, [], _) :- !.
verificaELeiaResto(-1, [], _) :- !.

verificaELeiaResto(Caracter, [Caracter | Caracteres] , NoFluxo) :-
  get_code(NoFluxo, ProxCaracter),
  verificaELeiaResto(ProxCaracter, Caracteres, NoFluxo).