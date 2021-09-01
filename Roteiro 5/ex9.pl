% 9. Traduza a seguinte regra DCG em um formato padr˜ao de regras do Prolog:

% cangu(V,R,Q) --> ru(V,R), salta(Q,Q), {marsupial(V,R,Q)}.

cangu(V, R, Q, A, C) :-
    ru(V, R, A, B),
    salta(Q, Q, B, C),
    marsupial(V, R, Q).
