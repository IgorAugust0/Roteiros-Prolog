% 3. Defina um predicado dec_para_bin(N,B) que converte um numero
% natural N em sua representacao binaria B, uma lista. Por exemplo:

% ?- dec_para_bin(51,S).
% S = [1,1,0,0,1,1].

dec_para_bin(N,L) :- dec_para_bin(N,[],L).

dec_para_bin(0,L,[0|L]).
dec_para_bin(1,L,[1|L]).
dec_para_bin(N,L,R):-
    N > 1,
    X is N mod 2,
    Y is N // 2,
    dec_para_bin(Y,[X|L],R).
