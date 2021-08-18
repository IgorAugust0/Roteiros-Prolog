% 16. Escreva um predicado remove(X,L,L1) que remove a primeira
% ocorrencia do elemento X na lista L, resultando na lista L1.

% ?- remove(a,[a,b,a,c,a],L).
% L = [b, a, c, a] ;
% L = [a, b, c, a] ;
% L = [a, b, a, c] ;
% false.

% Dica: estude a implementacao do predicado membro/2 pos eh muito
% parecido com esta.

remove(X,[X|R],R).
remove(X,[F|R],[F|S]) :- remove(X,R,S).
