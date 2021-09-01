% 3. Dada a seguinte DCG:

s --> foo,bar,wiggle.
foo --> [chu].
foo --> foo,foo.
bar --> mar,zar.
mar --> me,my.
me --> [eu].
my --> [sou].
zar --> blar,car.
blar --> [a].
car --> [trem].
wiggle --> [tchu].
wiggle --> wiggle,wiggle.


% Obs:. ***Para o prolog não dar aviso de warning****:
% ---------------------------------------------------------------------
:- discontiguous s/2.
:- discontiguous foo/2.
:- discontiguous bar/2.
:- discontiguous mar/2.
:- discontiguous me/2.
:- discontiguous my/2.
:- discontiguous zar/2.
:- discontiguous blar/2.
:- discontiguous car/2.
:- discontiguous wiggle/2.
% --------------------------------------------------------------------


% Escreva as regras Prolog comuns que correspondam a estas regras DCGs.

% s --> foo, bar, wiggle.
s(A, D) :-
    foo(A, B),
    bar(B, C),
    wiggle(C, D).

% foo --> [chu].
foo([chu | A], A).

% foo --> foo, foo.
foo(A, C) :-
    foo(A, B),
    foo(B, C).

% bar --> mar, zar.
bar(A, C) :-
    mar(A, B),
    zar(B, C).

% mar --> me, my.
mar(A, C) :-
    me(A, B),
    my(B, C).

% me --> [eu].
me([eu | A], A).

% my --> [sou].
my([sou | A], A).

% zar -> blar, car.
zar(A, C) :-
    blar(A, B),
    car(B, C).

% blar -> [A].
blar([a | A], A).

% car --> [trem].
car([trem | A], A).

% wiggle --> [tchu].
wiggle([tchu | A], A).

% wiggle --> wiggle, wiggle.
wiggle(A, C) :-
    wiggle(A, B),
    wiggle(B, C).


% Quais sao as primeiras tres respostas que o Prolog da a consulta
% s(X,[])?

% ?- s(X,[]).
% X = [chu, eu, sou, a, trem, tchu] ;
% X = [chu, eu, sou, a, trem, tchu, tchu] ;
% X = [chu, eu, sou, a, trem, tchu, tchu, tchu] ;
% ...
