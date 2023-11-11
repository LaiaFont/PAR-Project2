(define (domain robot_waiter_2)

    (:requirements :strips :typing :disjunctive-preconditions :negative-preconditions)

    (:types
        entity area - object
        robot plate buffet costumer - entity
    )

    (:predicates
        (adjacent ?a1 - area ?a2 - area) ;Wether area a1 and a2 are adjacent and not seperated
        (has_food ?p - plate) ;Wether plate p contains food 
        (served ?c - costumer) ;Wether costumer c has been served
        (holding ?p - plate ?r - robot) ;Wether Lucki is holding plate p
        (hands_full)                        ;Whether Lucki is holding any plate 
        (at ?o - entity ?a - area) ;Wether the object o is at area a 
    )

    ; ------ ACTIONS ------
    (:action move ;This action moves the robot from a1 to a2 
        :parameters (?a1 - area ?a2 - area ?r - robot)
        :precondition (and
            (at ?r ?a1)
            (or (adjacent ?a1 ?a2) (adjacent ?a2 ?a1))
        )
        :effect (and
            (not (at ?r ?a1))
            (at ?r ?a2)
        )
    )

    (:action pick_up ;This action lets the robot pick up the plate p in the area a 
        :parameters (?p - plate ?a - area ?r -robot)
        :precondition (and
            (at ?r ?a)
            (at ?p ?a)
            (not (hands_full))
        )
        :effect (and
            (holding ?p ?r)
            (hands_full)
            (not (at ?p ?a))
        )
    )

    (:action present ;This action lets the robot present the plate p to the costumer c in area a
        :parameters (?p - plate ?c - costumer ?a - area ?r - robot)
        :precondition (and
            (holding ?p ?r)
            (has_food ?p)
            (at ?r ?a)
            (at ?c ?a)
            (not (served ?c))
        )
        :effect (and
            (served ?c)
            (not (holding ?p ?r))
            (not (hands_full))
        )
    )

    (:action fill ;This action lets the robot r fill the plate p in the area a at the buffet b
        :parameters (?p - plate ?a - area ?r - robot ?b - buffet)
        :precondition (and
            (holding ?p ?r)
            (not (has_food ?p))
            (at ?r ?a)
            (at ?b ?a)
        )
        :effect (and
            (has_food ?p)
        )
    )
)