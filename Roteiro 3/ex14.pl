% 14. Na sequencia, digite a DCG discutida na aula. Digite listing para
% ver o resultado da traducao feita pelo Prolog das regras DCGs. Como o
% seu sistema traduz regras da forma Det --> [o]?

s --> sn,sv.

sn --> det,n.

sv --> v,sn.
sv --> v.

det --> [a].
det --> [o].

n --> [mulher].
n --> [homem].

v --> [chuta].

/*
?- listing.

s(A, C) :-
 sn(A, B),
 sv(B, C).

sn(A, C) :-
 det(A, B),
 n(B, C).

sv(A, C) :-
 v(A, B),
 sn(B, C).

sv(A, B) :-
 v(A, B).

det([a|A], A).
det([o|A], A).

n([mulher|A], A).
n([homem|A], A).

v([chuta|A], A).
true.

Traduz para: det([o|A], X).
*/
