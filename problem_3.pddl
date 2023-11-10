(define (problem hardest_problem)
    (:domain robot_waiter
    )
    (:objects
    c1 c2 c3 c4 - costumer
    p1 p2 p3 p4 - plate
    a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 - area
    )

    (:init
    (Adjacent a1 a2)
    (Adjacent a1 a6)
    (Adjacent a2 a7)
    (Adjacent a7 a8)
    (Adjacent a8 a3)
    (Adjacent a8 a9)
    (Adjacent a8 a13)
    (Adjacent a3 a4)
    (Adjacent a9 a10)
    (Adjacent a10 a5)
    (Adjacent a10 a15)
    (Adjacent a15 a14)
    (Adjacent a14 a19)
    (Adjacent a19 a18)
    (Adjacent a19 a20)
    (Adjacent a13 a12)
    (Adjacent a12 a11)
    (Adjacent a11 a16)
    (Adjacent a16 a17)

    (buffet_location a20)
    (customer_at c1 a6) (customer_at c2 a4) (customer_at c3 a18) (customer_at c4 a17)
    (robot_at a6)
    (plate_at p1 a5) (plate_at p2 a18) (plate_at p3 a11) (plate_at p4 a2)
    )

    (:goal
        (and
            (served c1) (served c2) (served c3) (served c4)
        )
    )
)