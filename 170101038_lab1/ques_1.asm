;Store 50H at memory location 0000H.
;Store 60H at memory location 0001H.
;Exchange content of memory locations 0000H and 0001H.


MOV [0000H],50H 
;To move the value 50H to the memory location [0000H]

MOV [0001H],60H 
;To move the value 60H to the memory location [0001H]

MOV AH,[0000H]  
;To move the contents of the memroy location [0000H] in the register AH

MOV BH,[0001H] 
;The move the contents of [0001H] to the memory location BH

MOV [0001H],AH  
;To move the contents of the register AH to the memory location [0001H]

MOV [0000H],BH  
;To move the contents of the register BH to the memory location [0000H]

;End of program
