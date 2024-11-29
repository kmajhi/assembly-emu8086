.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    ; Display user prompt
    MOV AH,2
    MOV DL,'?'
    INT 21H

    ; Initialize character count
    XOR CX,CX

    ; Read a character
    MOV AH,1
    INT 21H

    ; While character is not a carriage return do
WHILE_:
    CMP AL,0DH
    JE END_WHILE
    PUSH AX
    INC CX

    ; Read a character
    MOV AH,1
    INT 21H
    JMP WHILE_

END_WHILE:
    ; Go to a new line
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H

    JCXZ EXIT

    ; For count times do
TOP:
    ; Pop a character from the stack
    POP DX

    ; Display it
    INT 21H
    LOOP TOP

    ; End for
EXIT:                      

    MOV AH,4CH
    INT 21H

MAIN ENDP
END MAIN
