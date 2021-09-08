% 15. Escreva um predicado pop_elevada(Continente, Lista) que calcule a
% lista de todos os países com mais de 15 milh˜oes de habitantes de um
% dado continente, ordenada por ordem crescente de população, no formato
% indicado.

% Exemplos de consulta:
% ?- pop_elevada(europa, Lista).
% Lista = [47-espanha, 60-itália, 67-frança, 83-alemanha]

% ?- pop_elevada(áfrica, Lista).
% Lista = [26-madagascar]

país(alemanha, europa, 83, [frança, bélgica, holanda, suíça]).
país(austrália, oceania, 25, []).
país(bélgica, europa, 11, [frança, holanda, alemanha]).
país(espanha, europa, 47, [portugal, frança]).
país(frança, europa, 67, [espanha, suíça, bélgica, alemanha, itália]).
país(holanda, europa, 17, [bélgica, alemanha]).
país(indonésia, oceania, 268, []).
país(itália, europa, 60, [frança, suíça]).
país(madagascar, áfrica, 26, []).
país(portugal, europa, 10, [espanha]).
país(suíça, europa, 8, [frança, alemanha, itália]).

pop_elevada(Continente, Lista) :-
    findall(Popul-Pais, (país(Pais, Continente, Popul, _), Popul>15), ListaIni),
    keysort(ListaIni, Lista).
