% 17. Conjuntos podem ser pensados como listas que nao contnham
% elementos repetidos. Por exemplo, [a,4,6] eh um conjunto, mas
% [a,4,6,a] nao eh, pois ele contem duas ocorrencias de a. Escreva um
% programa Prolog subconjunto/2 que eh satisfeito quando o primeiro
% argumento eh um subconjunto do segundo argumento, isto eh, quando
% qualquer elemento do primeiro argumento eh um membro do segundo
% argumento. Por exemplo:

% ?- subconjunto([a,b],[a,b,c]).
% true
% ?- subconjunto([c,b],[a,b,c])
% true
% ?- subconjunto([],[a,b,c])
% true

% Seu programa deveria ser capaz de gerar todos os subconjuntos de um
% conjunto dado como entrada via retrocesso. Por exemplo, se voce der
% como entrada

% ?- subconjunto(S,[a,b,c]).

% ele deveria gerar sucessivamente todos os oitos subconjuntos de [a,b,c].

% caso base
geraSubconjunto([], []).

% caso indutivo
geraSubconjunto(Subconjunto, [_ | Conjunto]) :- geraSubconjunto(Subconjunto, Conjunto).
geraSubconjunto([H |Subconjunto], [H | Conjunto]) :- geraSubconjunto(Subconjunto, Conjunto).

% Verifica se o primeiro argumento é o subconjunto do segundo.

% caso base
verificaSubconjunto([], _).

% caso indutivo
verificaSubconjunto([H | Subconjunto], Conjunto) :-
    member(H, Conjunto),
    verificaSubconjunto(Subconjunto, Conjunto).

% principal
subconjunto(Subconjunto, Conjunto) :-
    var(Subconjunto),
    geraSubconjunto(Subconjunto, Conjunto).

subconjunto(Subconjunto, Conjunto) :-
    nonvar(Subconjunto),
    verificaSubconjunto(Subconjunto, Conjunto).


% Saida de teste
% ?-  subconjunto(S,[a,b,c]).
% S = [] ;
% S = [c] ;
% S = [b] ;
% S = [b, c] ;
% S = [a] ;
% S = [a, c] ;
% S = [a, b] ;
% S = [a, b, c] ;
% false.


