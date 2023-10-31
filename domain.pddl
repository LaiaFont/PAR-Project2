(define (domain robot_waiter)

    (:requirements :strips :typing :disjunctive-preconditions :negative-preconditions)

    (:types
    plate - object
    area - position
    costumer - object
    )

    (:predicates
    (adjacent ?a1 - area ?a2 - area)       ;Wether area a1 and a2 are adjacent and not seperated
    (has_food ?p - plate)              ;Wether plate p contains food 
    (served ?c - costumer)             ;Wether costumer c has been served
    (holding ?p - plate)            ;Wether Lucki is holding plate p
    (buffet_location ?a - area)            ;Wether the buffet is in area a
    (robot_at ?a - area)                  ;Wether the robot is in area a
    (plate_at ?p - plate ?a - area)     ;Wether the plate p is in area a
    (customer_at ?c - costumer ?a - area)  ;Wether the costumer c is in area a
    )


    ; ------ ACTIONS ------
    (:action move ;This action moves the robot from a1 to a2 
    :parameters (?a1 - area ?a2 - area)
    :precondition (and
        (robot_at ?a1)
        (or (adjacent ?a1 ?a2) (adjacent ?a2 ?a1))
    )
    :effect (and
        (not (robot_at ?a1))
        (robot_at ?a2)
    )
    )

    (:action pick_up ;This action lets the robot pick up the plate p in the area a 
        :parameters (?p - plate ?a - area)
        :precondition (and
            (robot_at ?a)
            (plate_at ?p ?a)
            (not (holding ?p))
        )
        :effect (and
            (holding ?p)
            (not (plate_at ?p ?a))
        )
    )

    (:action present ;This action lets the robot present the plate p to the costumer c in area a
        :parameters (?p - plate ?c - costumer ?a - area)
        :precondition (and
            (holding ?p)
            (has_food ?p)
            (robot_at ?a)
            (customer_at ?c ?a)
            (not (served ?c))
        )
        :effect (and
            (served ?c)
            (not (holding ?p))
        )
    )

    (:action fill ;This action lets the robot fill the plate p in the area a
        :parameters (?p - plate ?a - area)
        :precondition (and
            (holding ?p)
            (not (Has_Food ?p))
            (robot_at ?a)
            (buffet_location ?a)
        )
        :effect (and
            (has_food ?p)
        )
    )
)