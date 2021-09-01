% 17 Use o predicado remove/3, definido no exercicio anterior, para
% implementar o predicado insere(X,L,L1) que insere um elemento X em
% alguma posicao da lista L, resultando na lista L1.

% ?- insere(a,[b,c,d],L).
% L = [a, b, c, d] ;
% L = [b, a, c, d] ;
% L = [b, c, a, d] ;
% L = [b, c, d, a] ;
% false.

remove(X,[X|R],R).
remove(X,[F|R],[F|S]) :- remove(X,R,S).

insere(X,[],[X]).
insere(X,L,L1) :- remove(X,L1,L).
