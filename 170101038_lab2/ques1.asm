
      
    DATA SEGMENT
; declare all the required variables
    
        A DW 1      
        D DW 4      
        N DW 10      
   
    DATA ENDS 
             
    CODE SEGMENT
            
        START:
        ASSUME CS:CODE, DS:DATA  
       
; to put all the required varialbes in corresponding registers       
        MOV A, 1
        MOV D,4
        MOV N,10
        
        MOV BX,D
        MOV CX, N
; to set the source index equal to 0
            
        MOV SI,0000H
        
        MOV AX, A   
                      
        L1:                     

; store the current value of ax in memory location [si]         
          MOV [SI], AX
          ADD AX,BX

; to increment source index          
          INC SI  
        
        LOOP L1     
                    
    CODE ENDS