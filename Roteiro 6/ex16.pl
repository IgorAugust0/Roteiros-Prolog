% 16. Escreva um predicado isolados_grandes(Lista) que calcule a lista,
% ordenada porordem alfab�tica, de todos os continentes que possuem pelo
% menos dois pa�ses que tenham simultaneamente uma popula�ao superior a
% 15 milh�oes e duas ou menos fronteiras terrestres (co pa�ses
% conhecidos).

% Exemplo:
% ?- isolados_grandes(Lista).
% Lista = [europa, oceania]
% europa pois possui a espanha e a it�lia;
% oceania devido � austr�lia e indon�sia.

pa�s(alemanha, europa, 83, [fran�a, b�lgica, holanda, su��a]).
pa�s(austr�lia, oceania, 25, []).
pa�s(b�lgica, europa, 11, [fran�a, holanda, alemanha]).
pa�s(espanha, europa, 47, [portugal, fran�a]).
pa�s(fran�a, europa, 67, [espanha, su��a, b�lgica, alemanha, it�lia]).
pa�s(holanda, europa, 17, [b�lgica, alemanha]).
pa�s(indon�sia, oceania, 268, []).
pa�s(it�lia, europa, 60, [fran�a, su��a]).
pa�s(madagascar, �frica, 26, []).
pa�s(portugal, europa, 10, [espanha]).
pa�s(su��a, europa, 8, [fran�a, alemanha, it�lia]).

isolado_grande(Pais, Cont) :- pa�s(Pais, Cont, Pop, Front), Pop>15,
    length(Front, L), L<3.

isolados_grandes(Lista):-
    findall(Cont,
            (isolado_grande(Pais1, Cont), isolado_grande(Pais2, Cont), Pais1\=Pais2),
            Lista1),
    sort(Lista1, Lista).


