% 14. Como Prolog responde `as seguintes consultas?

% ?- '[|]' (a,.(b,.(c,[]))) = [a,b,c]
% true

% ?- '[|]' (a,.(b,.(c,[]))) = [a,b|[c]]
% true

% ?- '[|]' (.(a,[]),.(.(b,[]),.(.(c,[]),[]))) = X
% X = [[a], [b], [c]].

% ?- '[|]' (a,.(b,.(.(c,[]),[]))) = [a,b|[c]]
% false

