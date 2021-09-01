% 7. Chamaremos uma lista de duplicada se ela eh formada de dois blocos
% consecutivos de elementos que sao exatamente os mesmos. Por exemplo,
% [a,b,c,a,b,c] eh duplicada, pois ela eh formada de [a,b,c] seguida por
% [a,b,c]. Tambem eh duplicada a lista[fu,ba,fu,ba]. Por outro lado, a
% lista [fu,ba,fu] n˜a eh duplicada. Escreva um predicado
% duplicada(Lista) que eh verdadeiro quando Lista eh uma lista
% duplicada.

duplicada(Lista) :- append(X, X, Lista).
