% 4. Finalmente, escreva um predicado intercala3 que recebe tres listas
% como argumentos e intercala os elementos das duas primeiras listas
% gerando uma terceira. Seguem alguns exemplos de uso:

% ?- intercala3([a,b,c],[1,2,3],X).
% X = [junta(a,1), junta(b,2), junta(c,3)]

% ?- intercala3([fu,ba,yip,yup],[glub,glab,glib,glob],Res).
% Res = [junta(fu,glub), junta(ba,glab), junta(yip,glib),junta(yup,glob)]

intercala3([],[],[]).
intercala3([H1 | T1], [H2 | T2], [junta(H1, H2) | T3]) :- intercala3(T1, T2, T3).

