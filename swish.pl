la_dreapta(Y, X, [Y, X, _, _, _]).
la_dreapta(Y, X, [_, Y, X, _, _]).
la_dreapta(Y, X, [_, _, Y, X, _]).
la_dreapta(Y, X, [_, _, _, Y, X]).

langa(X, Y, Lista) :- la_dreapta(X, Y, Lista).
langa(X, Y, Lista) :- la_dreapta(Y, X, Lista).


structurare(Case) :-
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
    la_dreapta(casa(alba, _, _, _, _), casa(verde, _, _, _, _), Case),
    member(casa(_, _, _, old_gold, melci), Case),
    member(casa(galbena, _, _, kools, _), Case),
    Case = [_, _, casa(_, _, lapte, _, _), _, _],
    Case = [casa(_, norvegian, _, _, _),_, _, _, _],
    langa(casa(_, _, _, chesterfields, _), casa(_, _, _, _, vulpe), Case),

    true.