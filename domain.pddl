(define (domain robot_waiter)

    (:requirements :strips :typing :disjunctive-preconditions :negative-preconditions)

    (:types
    plate - object
    area - position
    costumer - object
    )

    (:predicates
    (Adjacent ?a1 - area ?a2 - area)       ;Wether area a1 and a2 are adjacent and not seperated
    (Has_Food ?p - plate)              ;Wether plate p contains food 
    (Served ?c - costumer)             ;Wether costumer c has been served
    (Holding ?p - plate)            ;Wether Lucki is holding plate p
    (Buffet_Location ?a - area)            ;Wether the buffet is in area a
    (At ?a - area)                  ;Wether the robot is in area a
    (Plate_At ?p - plate ?a - area)     ;Wether the plate p is in area a
    (Costumer_At ?c - costumer ?a - area)  ;Wether the costumer c is in area a 
    )


    ; ------ ACTIONS ------
    (:action Move ;This action moves the robot from a1 to a2 
    :parameters (?a1 - area ?a2 - area)
    :precondition (and
        (At ?a1)
        (or (Adjacent ?a1 ?a2) (Adjacent ?a2 ?a1))
    )
    :effect (and
        (not (At ?a1))
        (At ?a2)
    )
    )

    (:action Pick_Up ;This action lets the robot pick up the plate p in the area a 
        :parameters (?p - plate ?a - area)
        :precondition (and
            (At ?a)
            (Plate_At ?p ?a)
            (not (Holding ?p))
        )
        :effect (and
            (Holding ?p)
            (not (Plate_At ?p ?a))
        )
    )

    (:action Present ;This action lets the robot present the plate p to the costumer c in area a
        :parameters (?p - plate ?c - costumer ?a - area)
        :precondition (and
            (Holding ?p)
            (Has_Food ?p)
            (At ?a)
            (Costumer_At ?c ?a)
            (not (Served ?c))
        )
        :effect (and
            (Served ?c)
            (not (Holding ?p))
        )
    )

    (:action Fill ;This action lets the robot fill the plate p in the area a
        :parameters (?p - plate ?a - area)
        :precondition (and
            (Holding ?p)
            (not (Has_Food ?p))
            (At ?a)
            (Buffet_Location ?a)
        )
        :effect (and
            (Has_Food ?p)
        )
    )
)