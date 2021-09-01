% Escreva um predicado binario tipotermo(+Termo,?Tipo) que recebe um
% termo e devolve o(s) tipo(s) daquele termo(atomo, numero, contante,
% variavel, etc.). Os tipos devem ser devolvidos em ordem de
% generalidade. O predicado deveria, por exemplo, comportar-se da
% seguinte forma.

% ?- tipotermo(Vicente,variavel).
% true

% ?- tipotermo(maria,X).
% X = atomo ;
% X = constante ;
% X = termo_simples ;
% X = termo ;
% false

% ?- tipotermo(vivo(zeca),X).
% X = termo_complexo ;
% X = termo ;
% false

:- discontiguous tipotermo/2.

tipotermo(Termo,atomo) :-
  atom(Termo).
tipotermo(Termo,inteiro) :-
  integer(Termo).
tipotermo(Termo,numero) :-
  number(Termo).
tipotermo(Termo,constante) :-
  atomic(Termo).
tipotermo(Termo,variavel) :-
  var(Termo).

%% termo complexo
tipotermo(Termo,termo_complexo) :-
  nonvar(Termo),
  functor(Termo,_,A),
  A > 0.

%% termo simples
tipotermo(Termo,termo_simples) :-
  tipotermo(Termo,variavel).
tipotermo(Termo,termo_simples) :-
  tipotermo(Termo,constante).

%% termo
tipotermo(Termo,termo) :-
  tipotermo(Termo,termo_simples).
tipotermo(Termo,termo) :-
  tipotermo(Termo,termo_complexo).


