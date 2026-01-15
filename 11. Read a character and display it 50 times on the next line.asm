.MODEL SMALL
.STACK 100H
.DATA
    prompt DB 'Enter a character: $' ; Name: Basudeb Kundu
    nl DB 0DH,0AH,'$'
    thanks DB 0DH,0AH,'Thank you.','$' ; ID: 23-50856-1
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    MOV AH,9
    LEA DX,prompt
    INT 21H

    MOV AH,1
    INT 21H       

  
    MOV AH,9
    LEA DX,nl
    INT 21H

    MOV CX,50
PRINT50:
    MOV DL,AL
    MOV AH,2
    INT 21H
    LOOP PRINT50

  
    MOV AH,9
    LEA DX,thanks
    INT 21H

    MOV AH,4Ch
    INT 21H
MAIN ENDP
END MAIN
