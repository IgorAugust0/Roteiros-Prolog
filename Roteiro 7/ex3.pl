% Escreva um predicado id�nticos/2 que compara o conte�do de dois
% arquivos e decide se eles s�o id�nticos. Como exemplo, considere
% arq1.txt e c�pia.txt do exerc�cio anterior. A consulta a seguir deve
% ser verdadeira, pois um arquivo � uma c�pia exata do outro.

% ?- id�nticos('arq1.txt', 'c�pia.txt').
% true

% Se os arquivos diferirem em algum caracter, o predicado deve falhar.
% Lembre-se de sempre fechar os arquivos ap�s abr�-los para qualquer que
% seja o uso.

id�nticos(ArquivoInicial, ArquivoCopia):-
	open(ArquivoInicial,read,Fluxo1),
	open(ArquivoCopia,read,Fluxo2),
	compare(Fluxo1,Fluxo2),
	close(Fluxo1),
	close(Fluxo2).

compare(Fluxo1, Fluxo2):-
	repeat,
	\+ at_end_of_stream(Fluxo1),
	\+ at_end_of_stream(Fluxo2),
	Plv1 = lerP(Fluxo1,Plv1),
	Plv2 = lerP(Fluxo2,Plv2),
	Plv1 \= '',
	Plv2 \= '',
	write(Plv1),nl,
	write(Plv2),nl,
	Plv1 = Plv2.

lerPalavra(Fluxo,P):-
	get_code(Fluxo,Caracter),
	verificaELeiaResto(Caracter,Caracteres,Fluxo),
	atom_codes(P,Caracteres).

verificaELeiaResto(10,[],_):-!.
verificaELeiaResto(32,[],_):-!.
verificaELeiaResto(-1,[],_):-!.

verificaELeiaResto(Caracter,[Caracter|Caracteres],F):-
	get_code(F,ProxCaracter),
	verificaELeiaResto(ProxCaracter,Caracteres,F).