 DATA SEGMENT
    
    NUM1 DW ?
    NUM2 DW ?
    
 DATA ENDS 
             
 CODE SEGMENT
        
 START:
 ASSUME CS:CODE, DS:DATA  

; TO STORE BOTH THE GIVEN INPUTS IN THE VARIABLES
 MOV NUM1, 3d
 MOV NUM2, 5d
 
 ;TO STORE THE VARIABLES IN THE REGISTERS
 MOV BX, NUM1
 MOV CX, NUM2
 
 ; TO FIND THE SQUARE OF FIRST NUMBER AND STORE THE VALUE IN THE REGISTER BX
 MOV AX, BX
 MUL BX
 MOV BX, AX

 ; TO FIND THE SQUARE OF SECOND NUMBER AND STORE THE VALUE IN THE REGISTER CX
 MOV AX, CX
 MUL CX
 MOV CX, AX
 
 ; TO FIND THE SUM OF BOTH THE SQUARES
 MOV AX, BX
 ADD AX, CX
 
 MOV CX, AX
 
 MOV BX ,1
 
 ; WE RUN THIS LOOP TILL WE FIND THE SQUARE ROOT OF THE SUM OF THE SQUARES OF THE GIVEN NMBBERS
 L1:
    MOV AX,BX
    MUL BX
    
    CMP AX, CX
    
    ; IF NUMBER'S SQUARE IS GREATER THAN THE VALUE STORED IN THE REGISTER CX, THEN BREAK
    JGE L2:       
    ADD BX,1
 
 JMP L1
 
 L2:
 
 ; TO STORE THE FINAL RESULT IN THE REGISTER AX
 MOV AX,BX
 
                
 CODE ENDS



