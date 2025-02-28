 ; Chapter Two
 ; Requires to write member check
 ;What happens when an item is not in the list?
 ;Query to the “member” specification to break a list
 ;into its component elements.

 ; specfiying that is accepts an argument p and a list l and returns either True or False
(: is_member (-> $l (List $l) Bool))

 ; if empty return false
(= (is_member $y Nil) False)

; if y is in the member of the first list it  returns true else it recursivly calls is_member function to the tail of list
(= (is_member $y (Cons $head $l))
    (if (== $y $head) True (is_member $y $l)))

! (is_member 1 (Cons 2 (Cons 3 Nil)))
