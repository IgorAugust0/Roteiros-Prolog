% 19. Assuma que se inicie com uma base de dados vazia. Ent�ao, dado o comando:

?- assert(q(a,b)), assertz(q(1,2)), asserta(q(foo,blug)).

% O que estar� na base de dados agora?

q(foo,blug).
q(a,b).
q(1,2).

% Na sequ�ncia � dado o comando:

?- retract(q(1,2)), assertz( (p(X) :- h(X)) ).

% O que estar� na base de dados agora?

q(foo,blug).
q(a,b).

:- dynamic p/1.

p(A) :- h(A).

% Por fim, entre com o comando:

?- retract(q(_,_)),fail.

% O que estar� na base de dados agora?
% false
p(A) :- h(A).
