% 9. Como o Prolog responde as seguintes consultas?

% 1. X = 3*4.
% X = 3*4.

% 2. X is 3*4.
% X = 12.

% 3. 4 is X.
% ERROR: is/2: Arguments are not sufficiently instantiated

% 4. X = Y.
% X = Y.

% 5. 3 is 1+2.
% true.

% 6. 3 is +(1,2).
% true.

% 7. 3 is X+2.
% ERROR: is/2: Arguments are not sufficiently instantiated

% 8. X is 1+2.
% X = 3.

% 9. 1+2 is 1+2.
% false.

% 10. is(X,+(1,2)).
% X = 3.

% 11. 3+2 = +(3,2).
% true.

% 12. *(7,5) = 7*5.
% true.

% 13. *(7,+(3,2)) = 7*(3+2).
% true.

% 14. *(7,(3+2)) = 7*(3+2).
% true.

% 15. *(7,(3+2)) = 7*(+(3,2)).
% true.

