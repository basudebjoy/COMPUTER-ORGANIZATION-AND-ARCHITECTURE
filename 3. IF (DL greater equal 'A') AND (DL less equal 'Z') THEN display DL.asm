.MODEL SMALL
.STACK 100H
.DATA
    nl DB 0DH,0AH,'$'
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

                      ; Name: Basudeb Kundu
    CMP DL,'A'
    JB SKIP3          ; ID : 23-50856-1
    CMP DL,'Z'
    JA SKIP3

    ; display DL
    MOV AH,2
    INT 21H

SKIP3:
    MOV AH,4Ch
    INT 21H
MAIN ENDP
END MAIN
