;This program reads a character and displays in the next position on the same line
.model small
.stack 100h
.data

    char db 0
 .code
 
 main proc
    mov ax, @data
    mov dx, ax
    
    mov ah, 1
    int 21h
    mov char, al   
    
    mov ah, 2
    mov dl, char
    int 21h
    
 main endp
 end main
