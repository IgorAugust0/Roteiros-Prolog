% 15. Escreva um predicado pop_elevada(Continente, Lista) que calcule a
% lista de todos os pa�ses com mais de 15 milh�oes de habitantes de um
% dado continente, ordenada por ordem crescente de popula��o, no formato
% indicado.

% Exemplos de consulta:
% ?- pop_elevada(europa, Lista).
% Lista = [47-espanha, 60-it�lia, 67-fran�a, 83-alemanha]

% ?- pop_elevada(�frica, Lista).
% Lista = [26-madagascar]

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

pop_elevada(Continente, Lista) :-
    findall(Popul-Pais, (pa�s(Pais, Continente, Popul, _), Popul>15), ListaIni),
    keysort(ListaIni, Lista).
