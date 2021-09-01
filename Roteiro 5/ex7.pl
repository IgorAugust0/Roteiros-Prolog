% 7. Realize alguns rastreamentos para a DCG para a linguagem
% a^n b^n c^n. Experimente casos onde os tres blocos de as, bs e cs
% sejam de fato do mesmo tamanho, assim como casos onde isto nao
% ocorre.

% [trace]  ?- s(Count,L,[]).
%    Call: (7) s(_G674, _G675, []) ?
%    Call: (8) ablock(_G674, _G675, _G745) ?
%    Exit: (8) ablock(0, _G675, _G675) ?
%    Call: (8) bblock(0, _G675, _G745) ?
%    Exit: (8) bblock(0, _G675, _G675) ?
%    Call: (8) cblock(0, _G675, []) ?
%    Exit: (8) cblock(0, [], []) ?
%    Exit: (7) s(0, [], []) ?
% Count = 0,
% L = [] ;
%    Redo: (8) ablock(_G674, _G675, _G745) ?
%    Call: (9) ablock(_G739, _G742, _G750) ?
%    Exit: (9) ablock(0, _G742, _G742) ?
%    Exit: (8) ablock(succ(0), [a|_G742], _G742) ?
%    Call: (8) bblock(succ(0), _G742, _G750) ?
%    Call: (9) bblock(0, _G745, _G753) ?
%    Exit: (9) bblock(0, _G745, _G745) ?
%    Exit: (8) bblock(succ(0), [b|_G745], _G745) ?
%    Call: (8) cblock(succ(0), _G745, []) ?
%    Call: (9) cblock(0, _G748, []) ?
%    Exit: (9) cblock(0, [], []) ?
%    Exit: (8) cblock(succ(0), [c], []) ?
%    Exit: (7) s(succ(0), [a, b, c], []) ?
% Count = succ(0),
% L = [a, b, c] ;
