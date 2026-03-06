la_dreapta(Y, X, [Y, X, _, _, _]).
la_dreapta(Y, X, [_, Y, X, _, _]).
la_dreapta(Y, X, [_, _, Y, X, _]).
la_dreapta(Y, X, [_, _, _, Y, X]).

langa(X, Y, Lista):- la_dreapta(X, Y, Lista).
langa(X, Y, Lista):- la_dreapta(Y, X, Lista).


strucutrare(Case) :-
    Case = [
        casa(_, _, _, _, _),
        casa(_, _, _, _, _),
        casa(_, _, _, _, _),
        casa(_, _, _, _, _),
        casa(_, _, _, _, _)
    ],

    member(casa(rosie, englez, _, _, _), Case),
    member(casa(_, spaniol, _, _, caine), Case),
    %aiaic puneti codul type shit%/
    true.