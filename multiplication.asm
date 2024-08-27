;program to calculate multiplication

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
        
            
       ; input for a
    mov ah,01h
    int 21h
    sub al,48
    mov a,al  
    
     mov dl, 10  
    mov ah, 02h
    int 21h 
    mov dl,13
    int 21h 
    
    ;Display the Message 2
        mov ah,09h
        mov dx,offset msg1
        int 21h 
                
        ;input for b
            mov ah,01h
            int 21h
            sub al, 48
            
            mul a 
            aam
    
    
    mov bx,ax  
       
  
    MOV dl, 10    ;line break here
    MOV ah, 02h
    INT 21h 
    
    mov dl,13 
    mov ah,02h
    int 21h      
    
    
     ;Display the Message 3
        mov ah,09h
        mov dx,offset msg2
        int 21h 
    
    
    mov ah,02h      ;first digit
    mov dl,bh
    add dl,48
    int 21h
          
   
    
    mov ah,02h   ;second digit
    mov dl,bl
    add dl,48
    int 21h
    
     ;Terminate
        mov ah, 4ch
        int 21h
        main endp 

     end main
        
    
