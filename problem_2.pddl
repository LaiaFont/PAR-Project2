(define (problem harder_problem)
    (:domain robot_waiter
    )
    (:objects
    c1 c2 c3 c4 c5 c6 - costumer
    p1 p2 p3 p4 p5 p6 - plate
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
    (adjacent pma ama)
    (adjacent ama pma) 
    (buffet_location bta)
    (customer_at c1 pma) (customer_at c2 pua) (customer_at c3 ama) (customer_at c4 ala) (customer_at c5 pla) (customer_at c6 aua)
    (robot_at ala)
    (plate_at p1 bta) (plate_at p2 bta) (plate_at p3 bta) (plate_at p4 bta) (plate_at p5 bta) (plate_at p6 bta) 
    )

    (:goal
        (and
            (served c1) (served c2) (served c3) (served c4) (served c5) (served c6)
            (robot_at bta)
        )
    )
)