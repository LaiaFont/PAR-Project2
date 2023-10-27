(define (problem basic_problem)
    (:domain robot_waiter)
    (:objects
    c - costumer
    p - plate
    a1 - area
    a2 - area
    )

    (:init
    (Adjacent a1 a2)
    (Buffet_Location a1)
    (Costumer_At c a2)
    (At a1)
    (Plate_At p a1)
    )

    (:goal
        (and
            (Served c)
        )
    )
)