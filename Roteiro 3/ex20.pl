% 20. Crie consultas para responder as seguintes perguntas:

combinacao(0,_,[]).
combinacao(N,[X|Xs],[X|Ys]):- N>0,
    N1 is N - 1,
    combinacao(N1,Xs,Ys).
combinacao(N,[_|Xs], Ys):- N>0,
    combinacao(N,Xs,Ys).

% (a) Uma escola possui 10 alunos atletas a1, a2, . . . , a10. Quais as
% diferentes equipes que podem ser formadas com 5 alunos?

% combinacao(5,[a1,a2,a3,a4,a5,a6,a7,a8,a8,a9,a10],C).


% (b) Pretende-se reformular o curso de Matematica Discreta. Para tal,
% sera constituido um comite com tres professores da Faculdade de
% Matematica (de um total de nove: {m1, m2, . . . , m9}) e quatro
% professores da Faculdade de Computacao (de um total de onze:
% {c1, c2, . . . , c11}). Quais sao os diferentes tipos de comites que
% podem ser formados?
% Dica: pode ser necessario o uso de append/3.


