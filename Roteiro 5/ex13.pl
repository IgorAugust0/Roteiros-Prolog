% 13. Quais das seguintes consultas tem sucesso e quais falham?

% ?- 12 is 2*6.
% true

% ?- 14 =\= 2*6.
% true

% ?- 14 = 2*7.
% false

% ?- 14 == 2*7.
% false

% ?- 14 \== 2*7.
% true

% ?- 14 =:= 2*7.
% true

% ?- [1,2,3|[d,e]] == [1,2,3,d,e].
% true

% ?- 2+3 == 3+2.
% false

% ?- 2+3 =:= 3+2.
% true

% ?- 7-2 =\= 9-2.
% true

% ?- p == 'p'.
% true

% ?- p =\= 'p'.
% ERROR: =\=/2: `p/0' is not a function

% ?- vincent == VAR.
% false.

% ?- vincent=VAR,VAR==vincent.
% VAR = vincent.
