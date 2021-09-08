% 6. Diga quais seriam as respostas do Prolog para cada uma das
% consultas anteriores,se os programas carregados fossem os mostrados na
% sequencia. Alem disso, desenhe a árvore de prova de cada consulta.

f(X) :- X=p,!.
f(X) :- !,X=q.
f(X) :- X=r.

/*
-----------------------------
?- f(p).
true.

         f(p)
       /  |  \
   ?-p=p  X   X
   /
true.
-----------------------------
?- f(q).
true.

          f(q)
       /   |    \
  ?-q=p  ?-q=q   X
   /       |
false.   true.
-----------------------------
?- f(r).
false.

          f(r)
      /    |    \
   ?-r=p  ?-r=q  X
   /       |
false.   false.
-----------------------------
?- f(X).
X = p.

         f(X)
       /   |   \
   ?-X=p   X    X
   /
true.
-----------------------------
*/
