% 10. Primeiro, reuna todas as coisas que aprendeu sobre DCGs para
% Portugues em uma unica DCG. Em particular, nessa semana vimos como
% usar argumentos extras para lidar com a distincao sujeito/objeto, e
% nos exercicios anteriores voce usou argumentos adicionais para lidar
% com a distincao singular/plural. Escreva uma DCG que trate ambos.
% Alem disto, escreva a DCG de tal forma que ela produza arvores
% sintaticas e faca uso de um lexico separado.


s(Numero, s(Numero, SN, SV)) --> sn(Numero, SN), sv(Numero, SV).

sn(Numero, sn(Numero, DET, N)) --> det(Numero, DET), n(Numero, N).

sv(Numero, sv(Numero, V, SN)) --> v(Numero, V), sn(_, SN).
sv(Numero, sv(Numero, V)) --> v(Numero, V).

det(Numero, det(Numero, Palavra)) --> [Palavra], {lex(Palavra, Numero, det)}.

n(Numero, n(Numero, Palavra)) --> [Palavra], {lex(Palavra, Numero, n)}.

v(Numero, v(Numero, Palavra)) --> [Palavra], {lex(Palavra, Numero, v)}.

% Lexico
lex(os, _, det).
lex(o, _, det).
lex(na, singular, det).

lex(mulher, singular, n).
lex(homem, singular, n).
lex(homens, plural, n).

lex(bate, singular, v).
lex(batem, plural, v).

/* Consultas de Teste

s(P,T,[os,homens,batem,na,mulher],[]).
P = plural,
 T =
 s(plural,
   sn(plural,
      det(plural, os),
      n(plural, homens)),
   sv(plural,
      v(plural, batem),
      sn(singular,
         det(singular, na),
         n(singular, mulher)))) .

s(P,T,[o,homem,bate,na,mulher],[]).
P = singular,
    T =
    s(singular,
      sn(singular,
         det(singular, o),
         n(singular, homem)),
      sv(singular,
         v(singular, bate),
         sn(singular,
            det(singular, na),
            n(singular, mulher))))

s(P,T,L,[]).
P = singular,
    T = s(singular,
          sn(singular,
             det(singular, os),
             n(singular, mulher)),
          sv(singular,
             v(singular, bate),
             sn(singular,
                det(singular, os),
                n(singular, mulher)))),
    L = [os, mulher, bate, os, mulher]


Obs.: nao sei o motivo pelo qual esta ultima consulta ficou dessa
forma, creio que errei em algum local no qual nao tenho conhecimento.
*/
