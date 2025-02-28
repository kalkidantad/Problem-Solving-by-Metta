 ; Write a program to count the elements in a list

(: count_elements (-> (List $l) Number))
 ; an empty list returns 0
(= (count_elements Nil) 0)

(= (count_elements (Cons $h $l)) ( + 1 (count_elements $l)))
!(count_elements (Cons 7 (Cons 8 (Cons 9 Nil))))
