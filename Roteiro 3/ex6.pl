% 6. Escreva um predi cado bissexto(A) que recebe um ano e eh verdadeiro
% se ele for bissexto ou falso em caso contrario.

/*
?- bissexto(2021).
false
?- bissexto(2000).
true
?- bissexto(2004).
true
?- bissexto(1900).
false
*/

checar_bissexto(Ano) :-
        Ano mod 400 =:= 0.

checar_bissexto(Ano) :-
        Ano mod 4 is 0,
        Ano mod 100 =:= 0.

bissexto(Ano) :-
        checar_bissexto(Ano).
