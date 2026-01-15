.MODEL SMALL
.STACK 100H
.DATA
    nl DB 0DH,0AH,'$'  ; Name : Basudeb Kundu
.CODE
MAIN PROC              ; Id: 23-50856-1
    MOV AX,@DATA
    MOV DS,AX

    MOV CX,20       ; 20 terms
    MOV AX,0        ; accumulator in AX
    MOV BL,100      ; current term in BL

SUM_LOOP10:
    ADD AX,BX       ; AX += BL (BL zero-extends into BX reg area)
    SUB BL,5
    LOOP SUM_LOOP10

    ; AX now contains 1050
    MOV AH,4Ch
    INT 21H
MAIN ENDP
END MAIN
