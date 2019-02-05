
DATA SEGMENT
    
    NUM DW ?
DATA ENDS

CODE SEGMENT 

ASSUME DS:DATA, CS:CODE

START:
    
    MOV NUM, 0111001010111001b
        
    MOV AX,NUM
                
    MOV CX,8

          L1: 
            
;THIS SHIFTS THE REGISTER BL BY 1 BIT 

            SHL BL,1        
            
;THIS STORES THE LSB OF AH IN ITS MSB AND THE CARRY FLAG ALSO            
            ROR AH,1
                                                             
;THIS WILL JUMP TO L2 IF VALUE OF CARRY IS 0
            JNC L2
            ADD BL,1
            L2:
              
        LOOP L1





    MOV CX,8

          L3: 
                                     
                                     
;THIS SHIFTS THE REGISTER BH BY 1 BIT
            SHL BH,1
            ROR AL,1
                                                             
;THIS WILL JUMP TO L2 IF VALUE OF CARRY IS 0
            JNC L4
            ADD BH,1
            L4:
              
        LOOP L3


    
CODE ENDS