(define (problem basic_problem)
    (:domain robot_waiter)
    (:objects
    c - costumer
    p - plate
    bta aua pua pma ama pla ala - area
    )

    (:init
    (adjacent bta aua) 
    (adjacent aua bta) 
    (adjacent aua pua) 
    (adjacent pua aua) 
    (adjacent aua ama) 
    (adjacent ama aua) 
    (adjacent ala ama) 
    (adjacent ama ala) 
    (adjacent pua pma) 
    (adjacent pma pua) 
    (adjacent pla pma) 
    (adjacent pma pla) 
    (adjacent pla ala) 
    (adjacent ala pla)
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