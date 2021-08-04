% Ex. 1

% Considere a seguinte situacao:


%        Um objeto A esta sobre uma mesa.
%        Um objeto B esta sobre o objeto A.


% (a) Instrua o interpretador de Prolog sobre esta situacao, usando
%     para isto o predicado sobre/2.


sobre(a,mesa).
sobre(b,a).


% (b) Expresse por meio de formulas logicas (e em seguida na notacao
%     do Prolog) a seguinte regra de conhecimento:


%        Se um objeto esta sobre outro,
%        entao este objeto esta acima do outro.


%     O predicado acima_de eh transitivo.

acima_de(X,Y) :- sobre(X,Z).


% (c) Coloque a seguinte quest˜ao ao interpretador Prolog: B esta
%     acima da mesa?”.

% acima_de(b,mesa).
% true
