% 4. A linguagem formal a^n b^n - {\epsilon} consiste de toda as strings
% a^n b^n , exceto a string vazia. Escreva uma DCG que gere esta
% linguagem.

% N�o terminais
s --> l,r.
s --> l,s,r.

% Terminais
l --> [a].
r --> [b].
