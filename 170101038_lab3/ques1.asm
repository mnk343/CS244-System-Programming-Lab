; ANSWER IS GIVEN BY THE REGISTER AX

    DATA SEGMENT        
    DATA ENDS 
             
    CODE SEGMENT
            
        START:
        ASSUME CS:CODE, DS:DATA  

    ; THE REGISTER AX CONTAINS THE INPUT NUMBER                    
        MOV AX, 0FFFFh
        MOV DX,AX
     
     ; COUNTER TO SIGNIFY NUMBER OF TIMES WE WILL RUN THE LOOP   
        MOV CX,16
        MOV BX, 0 
        
        L1:
        
        ; ROTATE THE REGISTER AX BY ONE BIT ON THE RIGHT AND THEN CHECK THE CARRY FLAG
            ROR AX,1
            JNC L2:
        ; IF CARRY IS 1 THEN EXECUTE THE FOLLOWING STATEMENT OR ELSE GO TO LABEL 2
            ADD BX,1
            L2:
        LOOP L1

       ; FINALLLY PUT THE VALUE BX IN AX SINCE THE REGISTER DISPLAYS THE RESULT        
        MOV AX,BX
                    
    CODE ENDS