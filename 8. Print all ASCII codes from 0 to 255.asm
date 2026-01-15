.MODEL SMALL
.STACK 100H
.DATA
    nl DB 0DH,0AH,'$'
.CODE
MAIN PROC
    MOV AX,@DATA  ; Name: Basudeb Kundu
    MOV DS,AX
                  ;   ID: 23-50856-1
    MOV CX,256
    XOR AL,AL  

PRINT_LOOP8:
    MOV DL,AL
    MOV AH,2
    INT 21H
    INC AL
    LOOP PRINT_LOOP8

    ; newline
    MOV AH,9
    LEA DX,nl
    INT 21H

    MOV AH,4Ch
    INT 21H
MAIN ENDP
END MAIN
