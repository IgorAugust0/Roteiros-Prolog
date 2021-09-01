% 8. Um palindromo eh uma palavra ou frase que tenha a propriedade de
% poder ser lida tanto da direita para a esquerda quanto da esquerda
% para a direita da mesma forma. Por exemplo, “rodador”, “ama”
% e “anilina” s˜ao plindromos. Escreva um predicado palindromo(Lista)
% que verifica se Lista eh um palindromo. Alguns exemplos de consultas,

% ?- palindromo([r,o,d,a,d,o,r]).
% true
% ?- palindromo([a,d,r,o,g,a,d,a,g,o,r,d,a]).
% true
% ?- palindromo([e,s,s,e,n,a,o]).
% false

% ---------------------------------------------------------------------------

%% Funcoes Auxiliares:

% inversa
% caso base
inversaAcum([],A,A).

% caso indutivo
inversaAcum([H|T],A,R) :- inversaAcum(T,[H|A],R).

% principal
inversa(L,R) :- inversaAcum(L,[],R).


%% Funcao Principal Palindromo

palindromo(Lista) :-
  inversa(Lista, Lista).

% ------------------------------------------------------------------------

% Use o seu predicado para verificar se as frases abaixo s˜aopalindromos.

% 1. Socorram-me, subi no onibus em Marrocos
% palindromo([s,o,c,o,r,r,a,m,m,e,s,u,b,i,n,o,o,n,i,b,u,s,e,m,m,a,r,r,o,c,o,s]).
% true

% 2. Anotaram a data da maratona
% palindromo([a,n,o,t,a,r,a,m,a,d,a,t,a,d,a,m,a,r,a,t,o,n,a]).
% true

% 3. A droga da gorda
% palindromo([a,d,r,o,g,a,d,a,g,o,r,d,a]).
% true

% 4. A mala nada na lama
% palindromo([a,m,a,l,a,n,a,d,a,n,a,l,a,m,a]).
% true

% 5. A torre da derrota
% palindromo([a,t,o,r,r,e,d,a,d,e,r,r,o,t,a]).
% true

