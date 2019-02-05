

DATA SEGMENT 
    
    NUM DW ?
DATA ENDS

CODE SEGMENT

ASSUME CS:CODE,DS:DATA

START:
   
   ; initialize the value of num to 6
   MOV NUM, 6
   MOV BX,NUM                     
   
   ; to move the values correspondingly
   MOV CX,BX
   SUB CX,0001H
   MOV AX,0001H                   
   
   CMP CX, 0000H
   
   ; if the value is greater than 0 then jump to label l1
   ; this is done to incorporate the n1 case
   JG L1
   MOV CX,0001H
    
   L1:
    
    MUL BX
    DEC BX
   
   LOOP L1
   
   ; the register ax gives the answer



CODE ENDS
