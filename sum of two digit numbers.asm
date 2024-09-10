.MODEL SMALL 
.STACK 100H 
.DATA 
    num1 DB 0AH, 0DH, "Enter the first number: $" 
    num2 DB 0AH, 0DH, "Enter the second number: $" 
    result DB 0AH, 0DH, "The result is: $"   
    
.CODE 
    MAIN: 
        MOV AX, @DATA 
        MOV DS, AX 
         
        LEA DX, num1 
        MOV AH, 09H 
        INT 21H 
         
        MOV AH, 01H 
        INT 21H 
         
        SUB AL, 30H 
        MOV BH, AL 
         
        MOV AH, 01H 
        INT 21H 
         
        SUB AL, 30H 
        MOV BL, AL ; BH:BL FIRST NUMBER 
         
        LEA DX, num2 
        MOV AH, 09H 
        INT 21H 
         
        MOV AH, 01H 
        INT 21H 
         
        SUB AL, 30H 
        MOV CH, AL 
         
        MOV AH, 01H 
        INT 21H 
         
        SUB AL, 30H 
        MOV CL, AL ; CH:CL SECOND NUMBER 
         
        ADD BL, CL 
         
        MOV AL, BL 
        MOV AH, 00H 
        AAA 
         
        MOV CL, AL ; LAST DIGIT OF ANSWER 
        MOV BL, AH 
         
        ADD BL, BH 
        ADD BL, CH 
         
        MOV AL, BL 
        MOV AH, 00H 
        AAA 
         
        MOV BX, AX 
       ;MOV BH, AH 
       ;MOV BL, AL 
        
        MOV DX, OFFSET result 
        MOV AH, 09H 
        INT 21H 
         
        MOV DL, BH 
        ADD DL, 30H 
        MOV AH, 02H 
        INT 21H 
         
        MOV DL, BL 
        ADD DL, 30H 
        MOV AH, 02H 
        INT 21H 
         
        MOV DL, CL 
        ADD DL, 30H 
        MOV AH, 02H 
        INT 21H  
        
        
    EXIT: 
        MOV AH, 04CH 
        INT 21H 
    END MAIN
