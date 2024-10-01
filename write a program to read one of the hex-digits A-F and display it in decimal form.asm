.model small
.stack 100h
.data
      char db 0
.code

main proc
        
     mov ah, 1
     int 21h
     mov char, al
     sub char, 17
     
     mov ah, 2
     mov dl, 10
     int 21h
     
     mov dl, 13
     int 21h
     
     mov ah,2
     mov dl, 49
     int 21h
     
     mov ah, 2
     mov dl, char
     int 21h
         
  main endp
end main
