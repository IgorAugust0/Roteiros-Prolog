% 19. Assuma que se inicie com uma base de dados vazia. Ent˜ao, dado o comando:

?- assert(q(a,b)), assertz(q(1,2)), asserta(q(foo,blug)).

% O que estará na base de dados agora?

q(foo,blug).
q(a,b).
q(1,2).

% Na sequência é dado o comando:

?- retract(q(1,2)), assertz( (p(X) :- h(X)) ).

% O que estará na base de dados agora?

q(foo,blug).
q(a,b).

:- dynamic p/1.

p(A) :- h(A).

% Por fim, entre com o comando:

?- retract(q(_,_)),fail.

% O que estará na base de dados agora?
% false
p(A) :- h(A).
