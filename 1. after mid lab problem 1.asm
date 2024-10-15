;Lab task 01;

;Write an assembly program to determine eligibility for admission to a professional course based on the following criteria: 
;Eligibility Criteria : Marks in Maths >=7
;Marks in Phy >=5 
;Total in Maths and Physics >=12

;Input:
 ;Input the marks obtained in Physics: 6
 ;Input the marks obtained in Mathematics :5

;Output1 :
;Total marks of Maths and Physics : 11
;The candidate is not eligible.


.model small
.stack 100h
.data  
    msg db 'Enter the first number: $'
    msg1 db 10, 13,'Enter the second number: $'
    msg2 db 10, 13,'Calculated Value: $'
    MsgNotEligible db 10, 13, 'The candidate is not eligible.$'
    MsgEligible db 10, 13, 'The candidate is eligible.$'    
    
    a db ?
    b db ?

.code
main proc
    mov ax, @data
    mov ds, ax    

    mov ah, 09h
    lea dx, msg
    int 21h  

    mov ah, 01h
    int 21h
    sub al, '0'   
    mov a, al    

    mov dl, 10  
    mov ah, 02h
    int 21h 
    mov dl, 13
    int 21h 

    mov ah, 09h
    lea dx, msg1
    int 21h

    mov ah, 01h
    int 21h
    sub al, '0'  
    mov b, al     

    mov al, a     
    add al, b     

   

EndPrint:
    cmp a, 7           
    jb NotEligible       

    cmp b, 5           
    jb NotEligible       

    mov dx, offset MsgEligible
    jmp PrintOutput

NotEligible:
    mov dx, offset MsgNotEligible

PrintOutput:
    mov ah, 09h 
    int 21h 
    mov ax, 4C00h 
    int 21h

main endp
end main
