 ; Chapter Two Solutions
 ;Create a relational database 


; defining the tuples as facts
(Study Mati CS) 
(Study Mel SE)
(Study Hermi SE)



 ; constraints as rules
(= (get-Student $field) (match &self (Study $student $field) $student))
!(get-Student SE)
