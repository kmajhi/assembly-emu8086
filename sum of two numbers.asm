;program to print sum

.model small
.stack 100h
.data  
    
    msg db 'Enter the first number: $'
    msg1 db 'Enter the second number: $'
    msg2 db 'Calculated Value: $'    
    
    a db ?
    b db ?

.code
main proc
    mov ax, @data
    mov ds,ax    
        
        
    ;Display the Message 1
        mov ah,09h
        mov dx,offset msg
        int 21h  
        
             
      ;input a
    mov ah,1
    int 21h
    sub al,30h
    mov a,al  
    
    mov dl, 10  
    mov ah, 02h
    int 21h 
    mov dl,13
    int 21h 
    
    ;Display the Message2
        mov ah,09h
        mov dx,offset msg1
        int 21h
        
        
    ;input b
    mov ah,1
    int 21h
    sub al,30h  ; convert ascii to integer      
    
                ;calculation 
    mov bl,a
    sub bl,al
    add bl,30h
    mov b,bl 
    
    MOV dl, 10  
    MOV ah, 02h
    INT 21h 
    mov dl,13
    int 21h
                 
            ;Display the Message3
        mov ah,09h
        mov dx,offset msg2
        int 21h    
        
            ;print 
        
    mov ah,02h
    mov dl,b
    int 21h
