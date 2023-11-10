(define (problem basic_problem)
    (:domain robot_waiter)
    (:objects
    c - costumer
    p - plate
    bta aua pua pma ama pla ala - area
    )

    (:init
    (adjacent bta aua) 
    (adjacent aua pua) 
    (adjacent aua ama) 
    (adjacent ama ala) 
    (adjacent pua pma) 
    (adjacent pma pla) 
    (adjacent pla ala) 
    (buffet_location bta)
    (customer_at c pma)
    (robot_at bta)
    (plate_at p bta)
    )

    (:goal
        (and
            (served c)
            (robot_at bta)
        )
    )
)