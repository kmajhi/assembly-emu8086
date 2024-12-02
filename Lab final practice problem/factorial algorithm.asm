FACTORIAL PROC
    ; Computes N!
    ; Input: CX = N
    ; Output: AX = N!

    MOV AX, 1      ; Initialize AX to 1 (AX holds 'product').

TOP:
    MUL CX         ; Multiply AX (product) by CX (term).
    LOOP TOP       ; Decrement CX and repeat if CX > 0.

    RET            ; Return the result in AX.
FACTORIAL ENDP
