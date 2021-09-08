% 16. Escreva um predicado isolados_grandes(Lista) que calcule a lista,
% ordenada porordem alfabética, de todos os continentes que possuem pelo
% menos dois países que tenham simultaneamente uma populaç˜ao superior a
% 15 milh˜oes e duas ou menos fronteiras terrestres (co países
% conhecidos).

% Exemplo:
% ?- isolados_grandes(Lista).
% Lista = [europa, oceania]
% europa pois possui a espanha e a itália;
% oceania devido à austrália e indonésia.

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

isolado_grande(Pais, Cont) :- país(Pais, Cont, Pop, Front), Pop>15,
    length(Front, L), L<3.

isolados_grandes(Lista):-
    findall(Cont,
            (isolado_grande(Pais1, Cont), isolado_grande(Pais2, Cont), Pais1\=Pais2),
            Lista1),
    sort(Lista1, Lista).


