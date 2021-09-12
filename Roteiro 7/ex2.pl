% 2. Escreva um predicado copia_arq/2 que copia o conteúdo de um arquivo
% para outro. O primeiro argumento é o nome do arquivo fonte e o segundo
% é o nome do arquivo de destino. Após a consulta abaixo deverão existir
% dois arquivos: arq1.txt, o arquivo fonte; e o arquivo cópia.txt que é
% uma cópia exata de arq1.txt.

% Após a consulta abaixo deverão existir dois arquivos: arq1.txt, o
% arquivo fonte e o arquivo cópia.txt que é uma cópia exata de arq1.txt.

% ?- copia_arq('arq1.txt', 'cópia.txt').
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
