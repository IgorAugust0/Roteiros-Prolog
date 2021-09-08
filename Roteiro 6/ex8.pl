% 8. Diga quais seriam as respostas do Prolog para cada uma das
% consultas anteriores,se os programas carregados fossem os mostrados na
% sequencia. Alem disso, desenhe a árvore de prova de cada consulta.

f(X) :- X=p.
f(X) :- X=q,!.
f(X) :- X=r.

/*
-----------------------------
?- f(p).
true ;
false.

          f(p)
      /    |    \
   ?-p=p  ?-p=q  X
   /       |
true.    false.
-----------------------------
?- f(q).
true.

          f(q)
      /    |    \
   ?-q=p  ?-q=q  X
   /       |
false.   true.
-----------------------------
?- f(r).
true.

           f(r)
      /     |     \
   ?-r=p  ?-r=q   ?-r=r
    /       |	    \
false.    false     true.
-----------------------------
?- f(X).
X = p ;
X = q.

           f(X)
       /    |    \
   ?-X=p  ?-X=q   X
    /       |
true.     true.
-----------------------------
*/
