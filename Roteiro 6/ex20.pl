% 20. Assuma que se tenha a seguinte base de dados:

q(blob,blug).
q(blob,blag).
q(blob,blig).
q(blaf,blag).
q(dang,dong).
q(dang,blug).
q(flab,blob).

% Qual � a resposta do Prolog �s seguintes consultas:

% (a) findall(X, q(blob,X), Lista).
% Lista = [blug, blag, blig].

% (b) findall(X, q(X,blug), Lista).
% Lista = [blob, dang].

% (c) findall(X, q(X,Y), Lista).
% Lista = [blob, blob, blob, blaf, dang, dang, flab].

% (d) bagof(X, q(X,Y), Lista).
% Y = blag,
% Lista = [blob, blaf] ;
% Y = blig,
% Lista = [blob] ;
% Y = blob,
% Lista = [flab] ;
% Y = blug,
% Lista = [blob, dang] ;
% Y = dong,
% Lista = [dang].

% (e) setof(X, Y^q(X,Y), Lista).
% Lista = [blaf, blob, dang, flab].
