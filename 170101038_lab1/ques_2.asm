;Store 50H at memory location 0000H.
;Store 20H at memory location 0001H.
;Add content of both memory location and store the result at 0002H.

MOV [0000H],50H   
; To move the value 50H to the memory location [0000H]


MOV [0001H],20H  
; To move the value 20H to the memory location [0001H]


MOV AH,[0000H]    
;To move the value stored at [0000H] in the register AH

ADD AH,[0001H]    
;To add the values stored at the location [0001H] and the values in the register AH and store the result in the register AH


MOV [0002H],AH     
;To Move the value stored in the register AH to the memory location [0002H]

;End of program




