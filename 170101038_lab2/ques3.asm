
    MOV SI,0
 ; to store all the values         
          
    MOV [SI]  , 0001H
    INC SI
                     
    MOV [SI]  , 0002H
    INC SI
   
    MOV [SI]  , 0002H
    INC SI
    
    MOV [SI]  , 0003H
    INC SI
   
   MOV [SI]  , 0003H
    INC SI
; we basically take the xor of all numbers and check the answer. the number whose occurence is 1 is printed    
          
   MOV SI,0000H
   
   MOV AL,[SI]
   
   INC SI
   
   XOR AL,[SI]
    
   INC SI
   
   XOR AL,[SI]
   
   INC SI
   
   XOR AL,[SI]
   
   INC SI
   
   XOR AL,[SI]
   
             ; the register al gives the answer
   
   


                                                                                                          
                                                                                                         ;
