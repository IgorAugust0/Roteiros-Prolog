% 4. Diga quais seriam as respostas do Prolog para cada uma das
% consultas anteriores,se os programas carregados fossem os mostrados na
% sequencia. Alem disso, desenhe a árvore de prova de cada consulta.

f(X) :- !,X=p.
f(X) :- !,X=q.
f(X) :- X = r.

/*
-----------------------------
?- f(p).
true.

        f(p)
      /  |  \
 ?-p=p   X   X
  /
true
-----------------------------
?- f(q).
false.

         f(q)
       /  |  \
   ?-q=p  X   X
   /
false
-----------------------------
?- f(r).
false

          f(r)
       /  |  \
   ?-r=p   X   X
    /
false
-----------------------------
?- f(X).
X = p.

          f(X)
       /  |  \
    X = p   X   X
     /
true
-----------------------------
*/
