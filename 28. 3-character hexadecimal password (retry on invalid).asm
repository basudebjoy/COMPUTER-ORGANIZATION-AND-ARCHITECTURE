.MODEL SMALL
.STACK 100H
.DATA
    prompt  DB 'Enter a 3-character (hex) password: $'
    errMsg  DB 0DH,0AH,'Invalid input!$'
    okMsg   DB 0DH,0AH,'Password accepted.$'
    nl      DB 0DH,0AH,'$'
    pass    DB 3 DUP(?)

.CODE                ; Name: Bausdeb kundu
MAIN PROC            ;   ID: 23-50856-1
    MOV AX,@DATA
    MOV DS,AX

RETRY:
    MOV AH,9
    LEA DX,prompt
    INT 21H

  
    MOV SI,OFFSET pass
    MOV CX,3
READ_LOOP:
    MOV AH,1
    INT 21H
    MOV [SI],AL
    INC SI
    LOOP READ_LOOP

    MOV SI,OFFSET pass
    MOV CX,3

CHECK_LOOP:
    MOV AL,[SI]

    CMP AL,'0'
    JB INVALID_INPUT
    CMP AL,'9'
    JBE NEXT_CHAR

    CMP AL,'A'
    JB INVALID_INPUT
    CMP AL,'F'
    JA INVALID_INPUT

NEXT_CHAR:
    INC SI
    LOOP CHECK_LOOP

    MOV AH,9
    LEA DX,okMsg
    INT 21H
    JMP END_PROGRAM

INVALID_INPUT:
    MOV AH,9
    LEA DX,errMsg
    INT 21H
    JMP RETRY

END_PROGRAM:
    MOV AH,4Ch
    INT 21H
MAIN ENDP
END MAIN
