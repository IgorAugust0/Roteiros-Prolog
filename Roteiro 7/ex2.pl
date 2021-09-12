% 2. Escreva um predicado copia_arq/2 que copia o conte�do de um arquivo
% para outro. O primeiro argumento � o nome do arquivo fonte e o segundo
% � o nome do arquivo de destino. Ap�s a consulta abaixo dever�o existir
% dois arquivos: arq1.txt, o arquivo fonte; e o arquivo c�pia.txt que �
% uma c�pia exata de arq1.txt.

% Ap�s a consulta abaixo dever�o existir dois arquivos: arq1.txt, o
% arquivo fonte e o arquivo c�pia.txt que � uma c�pia exata de arq1.txt.

% ?- copia_arq('arq1.txt', 'c�pia.txt').
% true

:- discontiguous escreverCopia/2.

copia_arq(Inicial,Copia):-
	copiaInicialCopia(Inicial,Copia).

copiaInicialCopia(Inicial,Copia):-
	open(Inicial,read,Fluxo),
	lerDados(Fluxo,Conteudo),
	criarCopia(Copia),
	escreverCopia(Copia,Conteudo),
	close(Fluxo).

lerDados(Fluxo,[]):-
	at_end_of_stream(Fluxo),!.

lerDados(Fluxo,[X|XS]):-
	\+ at_end_of_stream(Fluxo),
	read(Fluxo,X),
	lerDados(Fluxo,XS).

criarCopia(Copia):-
	open(Copia,write,Fluxo),
	close(Fluxo).

escreverCopia(_Copia,[]).

escreverCopia(Copia,[X|XS]):-
	open(Copia,append,Fluxo),
	write(Fluxo,X),
	write(Fluxo), nl,
	close(Fluxo),
	escreverCopia(Copia,XS).
