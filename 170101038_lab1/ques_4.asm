;Evaluate following infix expression in terms of postfix expression using two registers only.
;You can use immediate addressing mode for giving values to registers. (No need to scan from
;keyboard)
;2+3*2-4

PUSH 02H    
;Push the value  02H to the stack

PUSH 03H    
;Push the value of 03H to the stack

PUSH 02H    
;Push the value 02H to the stack

POP AX      
;Pop an element from the stack and then store it in the register AX

POP BX
;Pop an element from the stack and then store it in the register BX

MUL BX 
;Multiply the contents of the register AX and BX and store the corresponding result in the register AX

PUSH AX   
;Push the value stored in AX to the stack

POP AX       
;Pop an element from the stack and then store it in the register AX

POP BX
;Pop an element from the stack and then store it in the register BX

ADD AX,BX   
;Add the contents stored in the registers AX and BX and store the result in the register AX

PUSH AX     
;Push the value stored in AX to the stack

PUSH 04H      
;Push the value 04H to the stack

POP BX        
;Pop an element from the stack and then store it in the register BX

POP AX        
;Pop an element from the stack and then store it in the register AX

SUB AX,BX     
;Subtract the contents stored in the register BX from that in AX and then store the result in the register AX

;End of program









