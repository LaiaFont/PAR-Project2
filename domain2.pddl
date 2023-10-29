(define (domain robot_waiter_2)

    (:requirements :strips :typing :disjunctive-preconditions :negative-preconditions)

    (:types
        plate - object
        area - position
        costumer - object
        buffet - object
        robot - object
    )

    (:predicates
        (adjacent ?a1 - area ?a2 - area) ;Wether area a1 and a2 are adjacent and not seperated
        (has_food ?p - plate) ;Wether plate p contains food 
        (served ?c - costumer) ;Wether costumer c has been served
        (holding ?p - plate) ;Wether Lucki is holding plate p
        (at ?what - object ?a -area) ;Wether what or who is at area a 
    )

    ; ------ ACTIONS ------
    (:action move ;This action moves the robot from a1 to a2 
        :parameters (?a1 - area ?a2 - area ?r - object)
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
        :parameters (?p - plate ?a - area ?r -object)
        :precondition (and
            (at ?r ?a)
            (at ?p ?a)
            (not (holding ?p))
        )
        :effect (and
            (holding ?p)
            (not (at ?p ?a))
        )
    )

    (:action present ;This action lets the robot present the plate p to the costumer c in area a
        :parameters (?p - plate ?c - costumer ?a - area ?r - object)
        :precondition (and
            (holding ?p)
            (has_food ?p)
            (at ?r ?a)
            (at ?c ?a)
            (not (served ?c))
        )
        :effect (and
            (served ?c)
            (not (holding ?p))
        )
    )

    (:action fill ;This action lets the robot fill the plate p in the area a
        :parameters (?p - plate ?a - area ?r - object ?b -object)
        :precondition (and
            (holding ?p)
            (not (Has_Food ?p))
            (at ?r ?a)
            (at ?b ?a)
        )
        :effect (and
            (has_food ?p)
        )
    )
)