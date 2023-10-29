(define (problem harder_problem)
    (:domain robot_waiter_2)
    (:objects
        c1 c2 c3 c4 - costumer
        p1 p2 p3 p4 - plate
        bta aua pua pma ama pla ala - area
        buffet - buffet
        robot - robot
    )

    (:init
    (adjacent bta aua) (adjacent aua bta)
    (adjacent aua pua) (adjacent pua aua)
    (adjacent aua ama) (adjacent ama aua)
    (adjacent ama ala) (adjacent ala ama)
    (adjacent pua pma) (adjacent pma pua)
    (adjacent pma pla) (adjacent pla pma)
    (adjacent pla ala) (adjacent ala pla)
    (at buffet bta)
    (at c1 pma) (at c2 pua) (at c3 ama) (at c4 ala)
    (at robot bta)
    (at p1 bta) (at p2 bta) (at p3 bta) (at p4 bta)
    )

    (:goal
        (and
            (served c1) (served c2) (served c3) (served c4)
            (at robot bta)
        )
    )
)