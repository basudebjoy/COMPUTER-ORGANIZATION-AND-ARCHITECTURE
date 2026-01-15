.MODEL SMALL
.STACK 100H
.DATA
    nl DB 0DH,0AH,'$'
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX       ;Name : Basudeb Kundu
    CMP AL,0        ;ID : 23-50856-1
    JGE POSITIVE
    MOV AH,0FFh
    JMP DONE
POSITIVE:
    MOV AH,0
DONE:
    MOV AH,4Ch
    INT 21H
MAIN ENDP
END MAIN
