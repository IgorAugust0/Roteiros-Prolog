% 22. Use a ideia acima e, inspirado pela definicao do predicado
% permutacao/2, crie um predicado arranjo(N,L,A) que eh verdadeiro
% quando A eh um arranjo simples com N elementos da lista L. Um exemplo
% de utilizacao eh:

/*
?- arranjo(2,[a,b,c,d],C).
C = [a, b] ;
C = [a, c] ;
C = [a, d] ;
C = [b, a] ;
C = [b, c] ;
C = [b, d] ;
C = [c, a] ;
C = [c, b] ;
C = [c, d] ;
C = [d, a] ;
C = [d, b] ;
C = [d, c] ;
false.
*/

remove(X,[X|R],R).
remove(X,[F|R],[F|S]) :- remove(X,R,S).

arranjo(0,_,[]).
arranjo(N,L,[H|Arranjo]):-
    N>0,
    N1 is N-1,
    remove(H,L,Resto),
    arranjo(N1,Resto,Arranjo).


