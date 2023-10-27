(define (problem harder_problem)
    (:domain robot_waiter)
    (:objects
    c1 c2 c3 c4 - costumer
    p1 p2 p3 p4 - plate
    bta aua pua pma ama pla ala - area
    )

    (:init
    (adjacent bta aua) (adjacent aua bta)
    (adjacent aua pua) (adjacent pua aua)
    (adjacent aua ama) (adjacent ama aua)
    (adjacent ama ala) (adjacent ala ama)
    (adjacent pua pma) (adjacent pma pua)
    (adjacent pma pla) (adjacent pla pma)
    (adjacent pla ala) (adjacent ala pla)
    (buffet_location bta)
    (customer_at c1 pma) (customer_at c2 pua) (customer_at c3 ama) (customer_at c4 ala)
    (robot_at bta)
    (plate_at p1 bta) (plate_at p2 bta) (plate_at p3 bta) (plate_at p4 bta)
    )

    (:goal
        (and
            (served c1) (served c2) (served c3) (served c4)
            (robot_at bta)
        )
    )
)