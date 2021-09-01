% 1. A linguagem formal a^n b^(2m) c^(2m) d^n consiste de todas as
% strings da seguinte forma: um bloco contiguo de as seguido por um
% bloco contiguo de bs, seguido por um bloco contiguo de cs, seguido por
% um bloco contiguo de ds, tal que os blocos a e d sao exatamente do
% mesmo tamanho, e os blocos b e c sao exatamente do mesmo tamanho e,
% alem disto, consistem de um numero par de bs e cs. Por exemplo,
% \epsilon, abbccd e aaabbbbccccddd pertecem a a^n b^(2m) c^(2m) d^n.
% Escreva uma DCG que gere esta linguagem.

s --> t.
s --> [a],s,[d].

t --> [].
t --> [b,b],t,[c,c].
