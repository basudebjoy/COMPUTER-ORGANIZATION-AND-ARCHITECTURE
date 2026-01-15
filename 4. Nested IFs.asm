.MODEL SMALL
.STACK 100H
.DATA
    nl DB 0DH,0AH,'$'
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
                     ; Name:Basudeb Kundu
                     ;   ID: 23-50434-1
    CMP AX,BX
    JGE END4
    CMP BX,CX
    JGE ELSE4
    MOV AX,0
    JMP END4
ELSE4:
    MOV BX,0
END4:
    MOV AH,4Ch
    INT 21H
MAIN ENDP
END MAIN
