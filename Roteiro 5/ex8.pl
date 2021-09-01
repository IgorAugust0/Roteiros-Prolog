% 8. Abaixo encontra-se a nossa DCG basica.

s --> sn, sv.

sn --> det, n.

sv --> v, sn.
sv --> v.

det --> [o].
det --> [a].

n --> [mulher].
n --> [homem].

v --> [bate].

% Suponha que adicionemos o nome “homens”, que eh plural, e o verbo
% “batem”. Entao, gostariamos de uma DCG que diga que “O homem bate”
% esta correto, “Os homens batem” esta correto, “O homem batem” nao esta
% correto e que “Os homens bate” tambem nao esta correto. Altere a DCG
% tal que ela corretamente trate estas sentencas . Use um argumento
% extra para lidar com a distincao singular/plural.
:- discontiguous s/2.


s(Q) --> np(Q), vp(Q).

np(Q) --> det(Q), n(Q).

vp(Q) --> v(Q), np(_).
vp(Q) --> v(Q).

% lexico

det(plural) --> [os].
det(singular) --> [o].
det(singular) --> [a].

n(plural) --> [homens].
n(singular) --> [mulher].
n(singular) --> [homem].

v(plural) --> [bate].
v(singular) --> [batem].
