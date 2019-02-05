; THE MAIN LIST HAS BEEN DIVIDED INTO TWO SUBSEQUENT LISTS OF ODD AND EVEN NUMBERS RESPECTIVELY
 
  DATA SEGMENT
    NUM DW ?
  DATA ENDS 
             
  CODE SEGMENT
            
    START:
    ASSUME CS:CODE, DS:DATA  
    
    ; WE BUILD THE STACK BY INSERTING ELEMENTS ONE BY ONE
    MOV NUM,10
    PUSH 99
    PUSH 16
    PUSH 00
    PUSH 08
    PUSH 34
    PUSH 54
    PUSH 57
    PUSH 23
    PUSH 66
    PUSH 49
    
    ; NUM REPRESENTS THE NUMBER OF ELEMENTS IN THE LIST
    MOV CX, NUM
    MOV SI, 0000
    
    ; TO SIGNIFY NUMBER OF CARS WITH ODD NUMBERS
    MOV DX,0000                                 
    
    ; TO SIGNIFY NUMBER OF CARS WITH EVEN NUMBERS
    MOV BX, 0000
    L1:
        POP AX
        
        ; SHIFT THE LSB AND CHECK IF IT IS ZERO
        ROR AX, 1
        
        ;JUMP IF CARRY IS 0 IE. JUMP IF THE NUMBER IS EVEN
        JNC L2:  
            
            ; TO BUILD THE NUMBER AGAIN
            ROL AX, 1
            MOV SI,DX
            
            ;TO STORE THE VALUE IN THE REQUIRED LOCATION
            MOV [SI] , AX
            
            ; TO INCREMENT THE VALUE OF DX SINCE WE HAVE FOUND A CAR WITH ODD NUMBER
            ADD DX, 1
            
        JMP L3
        
        L2: 
            ; TO BUILD THE NUMBER AGAIN
            ROL AX, 1
            MOV SI,BX
            ADD SI, 10
            
            ;TO STORE THE VALUE IN THE REQUIRED LOCATION
            MOV [SI] , AX
            
            ; TO INCREMENT THE VALUE OF DX SINCE WE HAVE FOUND A CAR WITH ODD NUMBER
            ADD BX, 1
            
        L3:     
        
        ; BREAK THE LOOP IF THE REGISTER CX IS 0
        CMP CX,0
        JE L4
            
    LOOP L1
    
    L4:
    
                    
  CODE ENDS


