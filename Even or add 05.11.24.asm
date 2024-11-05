.model small
.stack 100h
.data
    even db 10, 13,'Even$',0
    odd db 10, 13, 'Odd$',0
.code

main proc 
    mov ax, @data
    mov ds, ax
    mov ah, 1
    int 21h        
    
    mov bl, 2
    div bl         
    cmp ah, 0
    je IsEven
    
    
    mov dx, offset odd
    jmp PrintResult

IsEven:
    mov dx, offset even

PrintResult:
    mov ah, 9
    int 21h         
    mov ah, 4Ch
    int 21h         

main endp
end main
