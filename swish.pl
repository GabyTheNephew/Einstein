la_dreapta(Y, X, [Y, X, _, _, _]).
la_dreapta(Y, X, [_, Y, X, _, _]).
la_dreapta(Y, X, [_, _, Y, X, _]).
la_dreapta(Y, X, [_, _, _, Y, X]).

langa(X, Y, Lista) :- la_dreapta(X, Y, Lista).
langa(X, Y, Lista) :- la_dreapta(Y, X, Lista).


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
    member(casa(verde, _, _, _, _), Case),
    member(casa(_, ucrainian, ceai, _, _), Case),
    member(casa(_, _, _, _, fildes), Case),  % aici mai trebuie facut ceva
    member(casa(_, _, _, Old Gold, melci), Case),

    true.