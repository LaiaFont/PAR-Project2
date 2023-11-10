(define (problem harder_problem)
    (:domain robot_waiter_2)
    (:objects
        c1 c2 c3 c4 - costumer
        p1 p2 p3 p4 - plate
        bta aua pua pma ama pla ala - area
        buffet - buffet
        lucki - robot
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
        (at buffet bta)
        (at c1 pma)
        (at c2 pua)
        (at c3 ama)
        (at c4 ala)
        (at lucki bta)
        (at p1 bta)
        (at p2 bta)
        (at p3 bta)
        (at p4 bta)
    )
    (:goal
        (and
            (served c1) (served c2) (served c3) (served c4)
            (at lucki bta)
        )
    )
)