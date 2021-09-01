% Escreva um programa que define o predicado termoaterrado(+Termo) que
% testa se Termo eh um termo aterrado. Termos aterrados s˜ao termos que
% n˜ao conem variaveis. Aqui est˜ao exemplos de como o predicado deveria
% comportar-se:

% ?- termoaterrado(X).
% false

% ?- termoaterrado(franc^es(bic_mac,le_bic_mac)).
% true

% ?- termoaterrado(franc^es(mentiroso,X)).
% false

termoaterrado(Termo) :-
  nonvar(Termo),
  Termo =.. [_ | X],
  termoaterrado_em_lista(X).

termoaterrado_em_lista([H|T]) :-
  termoaterrado(H),
  termoaterrado_em_lista(T).

termoaterrado_em_lista([]).



