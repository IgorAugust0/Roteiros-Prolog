/*
1. Escreva um programa que leia um arquivo texto palavra por palavra e
insira todas as palavras lidas juntamente com suas frequ�ncias na
mem�ria do Prolog. Use um predicado din�mico palavra/2 para armazenar
as palavras, com o primeiro argumento � uma palavra e o segundo � a
frequ�ncia desta palavra no arquivo. O predicado principal ser�
chamado de histograma/1 e recebe como argumento o nome do arquivo. O
programa deve ignorar sinais de pontua��o e espa�os em branco.

Como exemplo, suponha que o conte�do abaixo perten�a ao arquivo
arq1.txt:


tinha suspirado, tinha beijado o papel devotamente! Era a primeira vez que
lhe escreviam aquelas sentimentalidades, e o seu orgulho dilatava-se ao
calor amoroso que sa�a delas, como um corpo ressequido que se estira num
banho t�pido; sentia um acr�scimo de estima por si mesma, e parecia-lhe que
entrava enfim numa exist�ncia superiormente interessante, onde cada hora
tinha o seu encanto diferente, cada passo condizia a um �xtase, e a alma
se cobria de um luxo radioso de sensa��es!


Ent�o, as consultas abaixo deveriam ser verdadeiras para ele:

?- histograma('arq1.txt').
true

?- palavra(a, Freq).
Freq=3

?- palavra(acr�scimo, Freq).
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