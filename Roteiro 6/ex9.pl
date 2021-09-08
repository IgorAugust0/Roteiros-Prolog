% 9. Diga quais seriam as respostas do Prolog para cada uma das
% consultas anteriores,se os programas carregados fossem os mostrados na
% sequencia. Alem disso, desenhe a árvore de prova de cada consulta.

f(p) :- !.
f(q) :- !.
f(r).

/*
-----------------------------
?- f(p).
true.

         f(p)
      /   |   \
   ?-p=p  X    X
   /
true.
-----------------------------
?- f(q).
true.

          f(q)
       /   |    \
   ?-p=p  ?-q=q  X
    /      |
false.   true.
-----------------------------
?- f(r).
true.

          f(r)
      /    |    \
  ?-r=p  ?-r=q  ?-r=r
   /       |      \
false.   false.   true.
-----------------------------
?- f(X).
X = p.

          f(X)
       /   |   \
   ?-p=p   X    X
    /
true.
-----------------------------
*/
