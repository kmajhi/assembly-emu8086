org 100h
.DATA
    ANS DB ?                ; To store the result
    PROMPT DB 'Enter a number: $' ; Prompt message
    NUMBER DB ?             ; Variable to store user input
.CODE
MAIN PROC  
    ; Display prompt message
    MOV AH, 09h
    LEA DX, PROMPT
    INT 21h
    
    ; Read user input
    MOV AH, 01h
    INT 21h
    SUB AL, '0'             ; Convert ASCII to integer
    MOV NUMBER, AL          ; Store input in NUMBER
    
    ; Load input value into AL and initialize other registers
    MOV AL, NUMBER          ; Initialize AL with the user input
    MOV CL, AL              ; Set CL as the loop counter
    MOV BL, AL              ; Copy AL to BL (used for decrementing in the loop)
    
FactorialLoop:
    DEC BL                  ; Decrement BL by 1
    CMP BL, 0               ; Check if BL has become 0
    JE Done                 ; If BL = 0, jump to Done
    MUL BL                  ; Multiply AL by BL (AL = AL * BL)
    LOOP FactorialLoop      ; Decrement CL and repeat the loop

Done:
    MOV ANS, AL             ; Store the result in ANS
    MOV AH, 4Ch             ; Exit program
    INT 21h

END MAIN
