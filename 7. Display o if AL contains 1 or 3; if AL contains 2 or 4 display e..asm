.MODEL SMALL
.STACK 100H
.DATA
    nl DB 0DH,0AH,'$'
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

               ; Name:Basudeb Kundu
               ;   ID: 23-50856-1

    MOV AH,1
    INT 21H

    CMP AL,'1'
    JE DO_o
    CMP AL,'3'
    JE DO_o
    CMP AL,'2'
    JE DO_e
    CMP AL,'4'
    JE DO_e
    JMP END7

DO_o:
    MOV DL,'o'
    MOV AH,2
    INT 21H
    JMP DONE7

DO_e:
    MOV DL,'e'
    MOV AH,2
    INT 21H

DONE7:
    MOV AH,4Ch
    INT 21H
END7:
MAIN ENDP
END MAIN
