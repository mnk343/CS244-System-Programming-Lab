; FINAL ANSWER IS THE VALUE STORED IN AX  
  
  DATA SEGMENT
    
    NUM1 DW ?
    NUM2 DW ?
    
  DATA ENDS 
             
  CODE SEGMENT
            
    START:
    ASSUME CS:CODE, DS:DATA  
    
    ; STORE BOTH THE INPUT NUMERS IN THE VARIABLES
    MOV NUM1, 30d
    MOV NUM2, 20d
    
    ; STORE BOTH THE INPUT NUMBERS IN THE REGISTERS  
    MOV BX,NUM1
    MOV CX,NUM2
    
    MOV AX, 0
    
    CMP BX, 0 
    JE L4
         
    CMP CX, 0 
    JE L4
    
         
    ; A LOOP WHICH WILL RUN UNTIL WE FIND THE LCM
    L1:
        MOV AX, BX
        DIV CX
        
        ; WE DIVIDE THE NUMBER BY THE SECOND NUMBER AND CHECK IF THE MODULUS IS 0
        MOV DX, AX
        MOV AX, CX
        MUL DX     
    
        CMP AX,BX
        
        ; WE COMPARE AND CHECK IF THE REGISTERS AX AND BX ARE EQUAL, IF THEY ARE, THEN BREAK
        JE L2
        
        ADD BX, NUM1
    JMP L1
    
    L2:
    
    ; WE HAVE FOUND THE LCM IN THE REGISTER AX
    MOV AX,BX
    MOV AX, NUM1
    MOV CX, NUM2
    
    ;WE WILL USE THE PROPERTY THAT NUM1 * NUM2 = LCM * HCF
    MUL CX
    DIV BX
    
    ; THIS IS THE HCF
    MOV BX,AX
    
    MOV AX, NUM1
    MOV CX, NUM2                              
    
    ;WE FIND THE TOTAL VOLUME WE HAVE AS INPUT
    ADD AX,CX
    
    ; WE DIVIDE THE TOTAL VOLUME BY THE HCF TO FIND THE ANSWER
    DIV BX
    
    ; IF ANY VALUE IS ZERO THEN ANSWER IS 0
    L4:    
        
  CODE ENDS


