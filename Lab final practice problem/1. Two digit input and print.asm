.model small 
.stack 100h
.data
     a db "Enter two digit number: $"
     b db 10, 13,"The number is: $"
.code
    main proc
        
        mov ax, @data
        mov ds, ax
        mov dx, offset a
        mov ah,9
        int 21h
        
        mov ah, 1
        int 21h
        sub al,30h
        
        mov bl,10
        mul bl
        
        AAM
        
        mov ch,ah
        add ch,48
        mov cl, al
        
        mov ah,1
        int 21h
        sub al,30h
        
        add cl, al
        add cl,48
        
        mov dx, offset b
        mov ah,9
        int 21h
        
        mov dl,ch
        mov ah,2
        int 21h
        
        mov dx,cx
        mov ch,02
        int 21h
        
        main endp
    end main
