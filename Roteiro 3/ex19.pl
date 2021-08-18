% 19. Crie um predicado npermutacoes(M,N) que calcule o numero total N
% de permutacoes possiveis em uma lista com M elementos. Use este
% predicado para calcular o numero de diferentes permutacoes para os
% dois exercicios anteriores e verifique se todas elas foram geradas.

remove(X,[X|R],R).
remove(X,[F|R],[F|S]) :- remove(X,R,S).

npermutacao([],[]).
npermutacao(Xs,[Y|Zs]):-
   remove(Y,Xs,Ys),
   npermutacao(Ys,Zs).
