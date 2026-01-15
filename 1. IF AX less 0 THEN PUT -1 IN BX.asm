.MODEL SMALL
.STACK 100H
.DATA
    nl DB 0DH,0AH,'$'    ; Name : Basudeb Kundu 
.CODE
MAIN PROC                ; ID : 23-50856-1
    MOV AX,@DATA
    MOV DS,AX

    CMP AX,0
    JGE SKIP
    MOV BX, 76A4h   

SKIP:
    MOV AH,4Ch
    INT 21H
MAIN ENDP
END MAIN
