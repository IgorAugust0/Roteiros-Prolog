% 5. Seja a^n b^(2n) a linguagem formal que contem todas as strings da
% seguinte forma: um bloco contiguo de as de tamanho n seguidopor um
% bloco contiguo de bs de tamanho 2n, e nada mais. Por exemplo,
% abb, aabbbb e aaabbbbbb pertencem a a^n b^(2n), assim como a string
% vazia. Escreva uma DCG que gere esta linguagem.

% Não terminais
s --> [].
s --> l,s,r,r.

% Terminais
l --> [a].
r --> [b].

% OU

s --> [].
s --> [a], s, [b,b].


