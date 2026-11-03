% Facts: directed edges from the graph
edge('Makkah', 'Madinah').
edge('Madinah', 'Makkah').
edge('Madinah', 'Taif').
edge('Madinah', 'Tabuk').
edge('Makkah', 'Riyadh').
edge('Taif', 'Tabuk').
edge('Tabuk', 'Taif').
edge('Taif', 'Dammam').
edge('Dammam', 'Al-Qatif').
edge('Al-Qatif', 'Dammam').
edge('Al-Qatif', 'Madinah').
edge('Dammam', 'Riyadh').
edge('Riyadh', 'Dammam').

% Find a path
travel(From, To, Path) :-
    path(From, To, [From], P),
    reverse(P, Path).

path(X, X, P, P).
path(X, Y, Visited, Path) :-
    edge(X, Z),
    not(member(Z, Visited)),
    path(Z, Y, [Z | Visited], Path).
