.model small
.stack 100h
.data
    msg db 10,13, 'Enter a number(1-4): $'
 
.code
main proc
    mov ax, @data
    mov ds, ax
    
    lea dx, msg
    mov ah, 9
    int 21h
    
    mov ah, 1
    int 21h
    
    CMP AL, '1'
    JE ODD
    
    CMP AL, '3'
    JE ODD
    
    CMP AL, '2'
    JE EVEN
    
    CMP AL, '4'
    JE EVEN
    
    JMP END_CASE
    
ODD:
    mov dl, 'o'
    
EVEN:
    mov dl, 'e'

DISPLAY:
    mov ah, 2
    int 21h

END_CASE:
    mov ah, 4ch
    int 21h
 
 end main
