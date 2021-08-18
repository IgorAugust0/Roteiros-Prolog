% 2 Escreva um predicado intercala1 que recebe tres listas como
% argumentos e interc%ala os elementos da
% duas primeiras listas gerando uma terceira. Seguem alguns exemplos de
% uso:

% ?- intercala1([a,b,c],[1,2,3],X).
% X = [a,1,b,2,c,3]
% ?- intercala1([fu,ba,yip,yup],[glub,glab,glib,glob],Res).
% Res = [fu,glub,ba,glab,yip,glib,yup,glob]

intercala1([],[],[]).
intercala1([H1 | T1], [H2 | T2], [H1, H2 | T3]) :- intercala1(T1, T2, T3).
