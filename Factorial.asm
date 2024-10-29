 org 100h
.DATA
    ANS DB ?                ; To store the result
.CODE
MAIN PROC  
    
    MOV AL,5                ; Initialize AL with the number (4! in this case)
    MOV CL,5                ; Set CL as the loop counter (4 iterations)
    MOV BL,AL               ; Copy AL to BL (used for decrementing in the loop)
    
    L:
    DEC BL                  ; Decrement BL by 1 (start with BL = 4, then BL = 3, 2, 1)
    CMP BL,0                ; Check if BL has become 0
    JE DONE                 ; If BL = 0, jump to DONE
    MUL BL                  ; Multiply AL by BL (AL = AL * BL)
    LOOP L                  ; Decrement CL and repeat the loop

DONE:
    MOV ANS,AL              ; Store the result in ANS
    MOV AH,4Ch              ; Exit program
    INT 21h

END MAIN
