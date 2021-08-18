% 10 Defina um predicado incrementa/2 que ´e verdadeiro somente quando o
% seu segundo argumento eh um inteiro maior que seu primeiro argumento
% por uma unidade. Por exemplo,

% ?- incrementa(4,5).
% true
% ?- incrementa(4,6).
% false

incrementa(X,Y) :- Y is X + 1.
