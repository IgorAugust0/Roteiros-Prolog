/*
-----------------------------
Roteiro I
-----------------------------
Nome: Igor Augusto Reis Gomes
Matricula: 12011BSI290
-----------------------------
*/

% Ex.01

pai(carlos,ana).
pai(carlos,juliana).
pai(bruno,isabela).
pai(joao,carlos).
pai(joao,bruno).

mae(rose,ana).
mae(rose,juliana).
mae(rose,enzo).
mae(gabriela,isabela).

homem(carlos).
homem(bruno).

mulher(rose).
mulher(gabriela).


% Ex.02

% Quem eh pai de ana?
?- pai(Pai,ana).

% Quem eh pai de quem?
?- pai(Pai, Filhx).


% Ex.03

% Quem s�ao os netos de Jo�ao?
pai(Avo,carlos),pai(carlos,Neto).

% Juliana e Ana tem o mesmo pai?
pai(X,juliana),pai(Y,ana).



% Ex.04

% filho
filho(X,Y):-pai(Y,X); mae(Y,X).

% filha
filha(X,Y):-pai(Y,X); mae(Y,X).

% irmao
irmao(X,Y):-pai(P,X),pai(P,Y) ; mae(M,X),mae(M,Y).

% irma
irma(X,Y):-pai(P,X),pai(P,Y) ; mae(M,X),mae(M,Y).

% irmaos
irmaos(X,Y):-pai(P,X),pai(P,Y) ; mae(M,X),mae(M,Y).

% tio
tio(X,Y):- pai(P,Y), irmaos(X,P); mae(P,Y), irmaos(X,P).

% tia
tia(X,Y):- pai(P,Y), irmaos(X,P); mae(P,Y), irmaos(X,P).

% primo
primo(X,Y):- irmaos(pai(P1,X),pai(P2,Y)); irmaos(mae(P1,X),mae(P2,Y)) .

% prima
prima(X,Y):- irmaos(pai(P1,X),pai(P2,Y)); irmaos(mae(P1,X),mae(P2,Y)) .

% avo
avo(X,Y):- mae(X,Z),mae(Z,Y).


/*
Ex.05
A consulta magico(elfo_domestico) ira resultar em uma excessao durante a
execucao do programa, dessa forma, a consulta nao sera satisfeita.


Ex.06
Por nao existir na Base de Conhecimentos um predicado com nome
"feiticeiro", ira ocorrer um erro na realizacao da consulta.


Ex.07
Nao existe nenhum local da base de conhecimentos onde consta o registro
de "feiticeiro", por consequencia, assim como na consulta anterior,
ira ocorrer um erro.


Ex.08
Da mesma forma, por nao haver nenhuma incidencia do predicado "feiticeiro(X)." na base, ao tentar consultar se �McGonagall� eh magico, uma excessao sera apresentadapelo proprio programa ao fazer a execucao.


Ex.09
A partir do momento essa consulta � executada, sera considerado
"Hermione" como uma variavel pelo Prolog (pelo fato de comecar com uma
letra maiuscula). Posteriormente, eh executado o primeiro
predicado, sendo ele, "magico(X)", assim, eh feito a unificacao,
resultando em "X = Hermione" e o substitui. Alem disso, o Prolog ira
verificar que elfo_domestico eh magico, assim tendo como resultado:
Hermione = dobby

Arvore de busca:

?- magico(Hermione).
Hermione = X
?- magico(X):-elfo_domestico(X).
X = dobby
Hermione = dobby


Ex.10
sentenca(Plv1,Plv2,Plv3,Plv4,Plv5).


Ex.11
Esta abaixo listado todas as sentencas que esta gramatica pode
gerar, sendo elas na mesma forma pela qual o Prolog as geraria:

	Plv1 = Plv4, Plv4 = um,
	Plv2 = Plv5, Plv5 = criminoso,
	Plv3 = come ;
	Plv1 = Plv4, Plv4 = um,
	Plv2 = criminoso,
	Plv3 = come,
	Plv5 = 'mac lanche feliz' ;
	Plv1 = um,
	Plv2 = Plv5, Plv5 = criminoso,
	Plv3 = come,
	Plv4 = qualquer ;
	Plv1 = um,
	Plv2 = criminoso,
	Plv3 = come,
	Plv4 = qualquer,
	Plv5 = 'mac lanche feliz' ;
	Plv1 = Plv4, Plv4 = um,
	Plv2 = Plv5, Plv5 = criminoso,
	Plv3 = adora ;
	Plv1 = Plv4, Plv4 = um,
	Plv2 = criminoso,
	Plv3 = adora,
	Plv5 = 'mac lanche feliz' ;
	Plv1 = um,
	Plv2 = Plv5, Plv5 = criminoso,
	Plv3 = adora,
	Plv4 = qualquer ;
	Plv1 = um,
	Plv2 = criminoso,
	Plv3 = adora,
	Plv4 = qualquer,
	Plv5 = 'mac lanche feliz' ;
	Plv1 = Plv4, Plv4 = um,
	Plv2 = 'mac lanche feliz',
	Plv3 = come,
	Plv5 = criminoso ;
	Plv1 = Plv4, Plv4 = um,
	Plv2 = Plv5, Plv5 = 'mac lanche feliz',
	Plv3 = come ;
	Plv1 = um,
	Plv2 = 'mac lanche feliz',
	Plv3 = come,
	Plv4 = qualquer,
	Plv5 = criminoso ;
	Plv1 = um,
	Plv2 = Plv5, Plv5 = 'mac lanche feliz',
	Plv3 = come,
	Plv4 = qualquer ;
	Plv1 = Plv4, Plv4 = um,
	Plv2 = 'mac lanche feliz',
	Plv3 = adora,
	Plv5 = criminoso ;
	Plv1 = Plv4, Plv4 = um,
	Plv2 = Plv5, Plv5 = 'mac lanche feliz',
	Plv3 = adora ;
	Plv1 = um,
	Plv2 = 'mac lanche feliz',
	Plv3 = adora,
	Plv4 = qualquer,
	Plv5 = criminoso ;
	Plv1 = um,
	Plv2 = Plv5, Plv5 = 'mac lanche feliz',
	Plv3 = adora,
	Plv4 = qualquer ;
	Plv1 = qualquer,
	Plv2 = Plv5, Plv5 = criminoso,
	Plv3 = come,
	Plv4 = um ;
	Plv1 = qualquer,
	Plv2 = criminoso,
	Plv3 = come,
	Plv4 = um,
	Plv5 = 'mac lanche feliz' ;
	Plv1 = Plv4, Plv4 = qualquer,
	Plv2 = Plv5, Plv5 = criminoso,
	Plv3 = come ;
	Plv1 = Plv4, Plv4 = qualquer,
	Plv2 = criminoso,
	Plv3 = come,
	Plv5 = 'mac lanche feliz' ;
	Plv1 = qualquer,
	Plv2 = Plv5, Plv5 = criminoso,
	Plv3 = adora,
	Plv4 = um ;
	Plv1 = qualquer,
	Plv2 = criminoso,
	Plv3 = adora,
	Plv4 = um,
	Plv5 = 'mac lanche feliz' ;
	Plv1 = Plv4, Plv4 = qualquer,
	Plv2 = Plv5, Plv5 = criminoso,
	Plv3 = adora ;
	Plv1 = Plv4, Plv4 = qualquer,
	Plv2 = criminoso,
	Plv3 = adora,
	Plv5 = 'mac lanche feliz' ;
	Plv1 = qualquer,
	Plv2 = 'mac lanche feliz',
	Plv3 = come,
	Plv4 = um,
	Plv5 = criminoso ;
	Plv1 = qualquer,
	Plv2 = Plv5, Plv5 = 'mac lanche feliz',
	Plv3 = come,
	Plv4 = um ;
	Plv1 = Plv4, Plv4 = qualquer,
	Plv2 = 'mac lanche feliz',
	Plv3 = come,
	Plv5 = criminoso ;
	Plv1 = Plv4, Plv4 = qualquer,
	Plv2 = Plv5, Plv5 = 'mac lanche feliz',
	Plv3 = come ;
	Plv1 = qualquer,
	Plv2 = 'mac lanche feliz',
	Plv3 = adora,
	Plv4 = um,
	Plv5 = criminoso ;
	Plv1 = qualquer,
	Plv2 = Plv5, Plv5 = 'mac lanche feliz',
	Plv3 = adora,
	Plv4 = um ;
	Plv1 = Plv4, Plv4 = qualquer,
	Plv2 = 'mac lanche feliz',
	Plv3 = adora,
	Plv5 = criminoso ;
	Plv1 = Plv4, Plv4 = qualquer,
	Plv2 = Plv5, Plv5 = 'mac lanche feliz',
	Plv3 = adora.



Ex.12
Foi verificado, e os os fatos estao efetivamente presentes na Base de Conhecimento, por meio da utilizacao do predicado listing.


Ex.13
aluno(joao,pl).


Ex.14
aluno(rui,poo).


Ex.15
aluno(joao,ed1),aluno(maria,ed1).


Ex.16
aluno(Aluno_PL, pl).


Ex.17
aluno(rui,Disciplina).


Ex.18
aluno(maria,pl),estuda(maria).


Ex.19
Por meio dessa consulta se torna possivel descobrir dentre os alunos,
quais faziam a disciplina de PL, isso por intermedio da base de dados a
qual foi fornecida, sendo que, a consulta analisa se o aluno esta
relacionado a disciplina e posteriormente se ele estuda. Portanto, a
consulta tera como resposta: x = maria; x = manoel.


Ex.20
fazpl(X):-aluno(X,pl),estuda(X).

*/
