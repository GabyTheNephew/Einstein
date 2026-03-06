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
    member(casa(verde, _, cafea, _, _), Case),
    member(casa(_, ucrainian, ceai, _, _), Case),
    la_dreapta(casa(verde, _, _, _, _), casa(alba, _, _, _, _), Case),
    member(casa(_, _, _, old_gold, melci), Case),

    true.