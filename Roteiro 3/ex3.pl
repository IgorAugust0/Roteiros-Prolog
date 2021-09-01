% 3. Agora escreva um predicado intercala2 que recebe tres listas como
% argumentos e intercala os elementos da duas primeiras listas gerando
% uma terceira. Seguem alguns exemplos de uso:

% ?- intercala2([a,b,c],[1,2,3],X).
% X = [[a,1], [b,2], [c,3]]

% ?- intercala2([fu,ba,yip,yup],[glub,glab,glib,glob],Res).
% Res = [[fu,glub], [ba,glab], [yip,glib], [yup,glob]]

intercala2([],[],[]).
intercala2([H1 | T1], [H2 | T2], [[H1, H2] | T3]) :- intercala2(T1, T2, T3).
