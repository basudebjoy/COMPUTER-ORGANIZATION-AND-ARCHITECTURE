.MODEL SMALL
.STACK 100H
.DATA                           ; Name: Basudeb Kundu
    msgOdd DB 0DH,0AH,'ODD$'
    msgEven DB 0DH,0AH,'EVEN$'  ;   ID: 23-50856-1
    msgNotNum DB 0DH,0AH,'Not a digit$'
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    MOV AH,1
    INT 21H
   
    CMP AL,'0'
    JB NOTDIG
    CMP AL,'9'
    JA NOTDIG

    AND AL,0Fh    
    TEST AL,1
    JNZ IS_ODD

    ; even
    MOV AH,9
    LEA DX,msgEven
    INT 21H
    JMP END14

IS_ODD:
    MOV AH,9
    LEA DX,msgOdd
    INT 21H
    JMP END14

NOTDIG:
    MOV AH,9
    LEA DX,msgNotNum
    INT 21H

END14:
    MOV AH,4Ch
    INT 21H
MAIN ENDP
END MAIN
