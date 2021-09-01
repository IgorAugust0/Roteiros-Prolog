% 6. Rastreie alguns exemplos de DCG que utilizem argumentos extras para
% tratar a distincao sujeito/objeto, de DCG que produza analise
% sintatica e de DCG que utilize testes extras para separar o lexico
% das regras. Certifique-se de que voce compreenda totalmente o modo
% com o qual todas as tres DCGs funcionam. Use os slides da aula
% teorica dessa semana.


% [trace]  ?- s([a,mulher,bate,nele],[]).
%    Call: (7) s([a, mulher, bate, nele], []) ?
%    Call: (8) sn(sujeito, [a, mulher, bate, nele], _G403) ?
%    Call: (9) det([a, mulher, bate, nele], _G402) ?
%    Exit: (9) det([a, mulher, bate, nele], [mulher, bate, nele]) ?
%    Call: (9) n([mulher, bate, nele], _G402) ?
%    Exit: (9) n([mulher, bate, nele], [bate, nele]) ?
%    Exit: (8) sn(sujeito, [a, mulher, bate, nele], [bate, nele]) ?
%    Call: (8) sv([bate, nele], []) ?
%    Call: (9) v([bate, nele], _G402) ?
%    Exit: (9) v([bate, nele], [nele]) ?
%    Call: (9) sn(objeto, [nele], []) ?
%    Call: (10) det([nele], _G402) ?
%    Fail: (10) det([nele], _G402) ?
%    Redo: (9) sn(objeto, [nele], []) ?
%    Call: (10) pro(objeto, [nele], []) ?
%    Exit: (10) pro(objeto, [nele], []) ?
%    Exit: (9) sn(objeto, [nele], []) ?
%    Exit: (8) sv([bate, nele], []) ?
%    Exit: (7) s([a, mulher, bate, nele], []) ?
% true

% ?- s(T,[a,mulher,bate],[]).

% [trace]  ?- s(T,[a,mulher,bate],[]).
%    Call: (7) s(_G346, [a, mulher, bate], []) ?
%    Call: (8) sn(_G405, [a, mulher, bate], _G414) ?
%    Call: (9) det(_G408, [a, mulher, bate], _G417) ?
%    Exit: (9) det(det(a), [a, mulher, bate], [mulher, bate]) ?
%    Call: (9) n(_G409, [mulher, bate], _G419) ?
%    Exit: (9) n(n(mulher), [mulher, bate], [bate]) ?
%    Exit: (8) sn(sn(det(a), n(mulher)), [a, mulher, bate], [bate]) ?
%    Call: (8) sv(_G406, [bate], []) ?
%    Call: (9) v(_G415, [bate], _G424) ?
%    Exit: (9) v(v(bate), [bate], []) ?
%    Call: (9) sn(_G416, [], []) ?
%    Call: (10) det(_G420, [], _G429) ?
%    Fail: (10) det(_G420, [], _G429) ?
%    Fail: (9) sn(_G416, [], []) ?
%    Redo: (8) sv(_G406, [bate], []) ?
%    Call: (9) v(_G415, [bate], []) ?
%    Exit: (9) v(v(bate), [bate], []) ?
%    Exit: (8) sv(sv(v(bate)), [bate], []) ?
%    Exit: (7) s(s(sn(det(a), n(mulher)), sv(v(bate))), [a, mulher, bate], []) ?
% T = s(sn(det(a), n(mulher)), sv(v(bate)))

% [trace]  ?- det([a],[]).
%    Call: (7) det([a], []) ?
%    Call: (8) lex(a, det) ?
%    Exit: (8) lex(a, det) ?
%    Call: (8) []=[] ?
%    Exit: (8) []=[] ?
%    Exit: (7) det([a], []) ?
% true.

% [trace]  ?- v([a],[]).
%    Call: (7) v([a], []) ?
%    Call: (8) lex(a, v) ?
%    Fail: (8) lex(a, v) ?
%    Fail: (7) v([a], []) ?
% false.
