 ;Design a program unique(Bag, Set) that takes a bag (a list
 ;that may contain duplicate elements) and returns a set (no elements are
 ;repeated)
 ; to check the membership of the element
(: isMember (-> $l (List $l) Bool))
(= (isMember $x Nil) False)
(= (isMember $x (Cons $h $l))
    (if (== $x $h) True (isMember $x $l))
)
 ; defining unique function that it accepts a list and outputs a list
(: uniqu (-> (List $l) (List $l)))
 ; base case
(= (uniqu Nil) Nil)
 ; recursive case
(= (uniqu (Cons $h $l))
     ; if the head is the member of the tail skip the head and apply unique to the tail
    (if (isMember $h (uniqu $l))
        (uniqu $l)
         ; otherwise add h to the unique list
        (Cons $h (uniqu $l))
    ))

! (uniqu (Cons 1 (Cons 2 (Cons 1 (Cons 3 Nil)))))
; !(isMember 4 (Cons 1 (Cons 2 (Cons 1 (Cons 3 Nil)))))
