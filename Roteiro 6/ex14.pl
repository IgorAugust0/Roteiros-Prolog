% 14. Defina um predicado unificavel(Lista1,Termo,Lista2) onde Lista2 eh
% a lista de todos os membros da Lista1 que poderiam se unificar com
% Termo, mas n�ao s�ao instanciados pa unificac�ao. Por eplo,

% ?- unific�vel([X,b,t(Y)],t(a),Lista).
% Lista = [X,t(Y)].

% Note que X e Y ainda n�ao est�ao instanciadas na resposta. Assim parte
% complicada eh: como verificar se elas unificam com t(a) sem
% instancia-las? (Dica: considere usar o teste \+ (termo1 = termo2). Por
% que? Pense sobre isto. Talvez voce deseje tambem pensar sobre o teste
% \+(\+ (termo1 = termo2))).

unific�vel([],_,[]).

unific�vel([H | Lista1],Termo,Lista2) :-
  \+ H = Termo, !,
  unific�vel(Lista1, Termo, Lista2).

unific�vel([H | Lista1], Termo, [H | Lista2]) :-
  unific�vel(Lista1, Termo, Lista2).
