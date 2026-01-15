.MODEL SMALL
.STACK 100H
.DATA
    prompt DB 'Enter characters: $'  ; Name:  Basudeb kundu
    nl DB 0DH,0AH,'$'
    thanks DB 0DH,0AH,'Thank you.','$' ; ID: 23-50856-1
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    MOV AH,9
    LEA DX,prompt
    INT 21H

    ; read first
    MOV AH,1
    INT 21H
    MOV BL,AL

    ; read second
    MOV AH,1
    INT 21H
    MOV CL,AL

    CMP BL,CL
    JBE NO_SWAP
    XCHG BL,CL

NO_SWAP:
    ; print BL then CL
    MOV DL,BL
    MOV AH,2
    INT 21H
    MOV DL,CL
    MOV AH,2
    INT 21H

    ; newline + thanks
    MOV AH,9
    LEA DX,thanks
    INT 21H

    MOV AH,4Ch
    INT 21H
MAIN ENDP
END MAIN
