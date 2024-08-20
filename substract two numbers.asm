.model small
.stack 100h
.code

main proc
    mov ah,01
    int 21h 
    sub al,30h
    mov bl,al
    
    mov ah,2       
    mov dl,10 ;new line here
    int 21h  
    mov dl,13
    int 21h
    
    mov ah,01
    int 21h
    sub al,30h 
    mov cl,al
    
    sub bl,cl
    add bl,30h
   
   mov ah,2
   mov dl,10
   int 21h
       
    
    mov ah,2
    mov dl,bl
    int 21h
