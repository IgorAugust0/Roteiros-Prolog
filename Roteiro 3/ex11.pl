% 11. Defina um predicado soma/3 que eh verdadeiro quando o seu terceiro
% argumento eh a soma dos primeiros dois argumentos. Por exemplo,

% ?- soma(4,5,9).
% true
% ?- soma(4,6,12).
% false

soma(X,Y,Z) :- Z is (X + Y).

