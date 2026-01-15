.MODEL SMALL
.STACK 100H
.DATA
    nl DB 0DH,0AH,'$'
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    CMP AX,BX
    JL SET_AX_ZERO 
    
                  ; Name: Basudeb Kundu
                  ;   ID: 23-50856-2

    CMP BX,CX
    JL SET_BX_ZERO
    MOV CX,0
    JMP END6

SET_AX_ZERO:
    MOV AX,0
    JMP END6

SET_BX_ZERO:
    MOV BX,0

END6:
    MOV AH,4Ch
    INT 21H
MAIN ENDP
END MAIN
