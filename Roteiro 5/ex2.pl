% 2. A linguagem que os logicos chamam de logica proposicional sobre os
% simbolos proposicionais p, q e r pode ser definida pela seguinte
% gramatica livre de contexto

% prop − > p
% prop − > q
% prop − > r
% prop − > ¬prop
% prop − > (prop ∧ prop)
% prop − > (prop ∨ prop)
% prop − > (prop → prop)

% Escreva uma DCG que gere esta linguagem. De fato, como ainda n˜ao
% aprendemos sobre operadores Prolog, voce tera que fazer algumas
% concess˜oes que parecerao bastante desajeitadas

% Por exemplo, ao inves de reconhecer

% ¬(p → q)

% voce tera que reconhecer coisas como

% [não, '(', p, implica, q, ')']

% Use ou para ∨, e e para ∧.

% ----------------------------------------------------------------

% prop -> p
% prop -> q
% prop -> r
% prop -> não prop
% prop -> (prop e prop)
% prop -> (prop ou prop)
% prop -> (prop implica prop)


prop --> [p].
prop --> [q].
prop --> [r].

prop --> [não], prop.
prop --> ['('],prop, conj, prop,[')'].

conj --> [e].
conj --> [ou].
conj --> [implica].
