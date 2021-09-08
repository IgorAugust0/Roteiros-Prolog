% 10. Diga quais seriam as respostas do Prolog para cada uma das
% consultas anteriores,se os programas carregados fossem os mostrados na
% sequencia. Alem disso, desenhe a árvore de prova de cada consulta.

f(p).
f(q):- !.
f(r).

/*
-----------------------------
?- f(p).
true.

          f(p)
      /    |    \
  ?-p=p  ?-q=p   X
    /      |
true.    false.
-----------------------------
?- f(q).
true.

          f(p)
      /    |    \
  ?-p=p  ?-q=p   X
    /      |
true.    false.
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
X = p ;
X = q.

         f(X)
     /    |    \
  ?-X=p  X=q    X
   /      |
true.   true.
-----------------------------
*/
