% 16. A linguagem formal aPar eh muito simples: ela consiste em todas as
% strings contendo um numero par de as e nada mais. Note que a string
% vazia pertence a aPar. Escreva uma DCG que gere aPar.

s --> [].
s --> [a],s,[a].

