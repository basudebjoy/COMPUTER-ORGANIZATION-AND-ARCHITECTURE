.MODEL SMALL
.STACK 100H
.DATA
    nl DB 0DH,0AH,'$'
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX 
    
                    ; Name: Basudeb kundu
                    ;   ID: 23-50856-1

    CMP AX,BX
    JL SET_ZERO        
    CMP BX,CX
    JL SET_ZERO        
    MOV DX,1
    JMP END5
SET_ZERO:
    MOV DX,0
END5:
    MOV AH,4Ch
    INT 21H
MAIN ENDP
END MAIN
