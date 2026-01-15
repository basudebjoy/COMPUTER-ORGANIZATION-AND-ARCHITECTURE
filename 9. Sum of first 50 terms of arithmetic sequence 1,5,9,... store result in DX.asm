.MODEL SMALL
.STACK 100H              ; Name: Basudeb kundu
.DATA
    nl DB 0DH,0AH,'$'    ;   ID: 23-50856-1
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    MOV CX,50      
    MOV DX,0        
    MOV BX,1        

SUM_LOOP9:
    ADD DX,BX
    ADD BX,4
    LOOP SUM_LOOP9

    ; DX now has 4950
    MOV AH,4Ch
    INT 21H
MAIN ENDP
END MAIN
