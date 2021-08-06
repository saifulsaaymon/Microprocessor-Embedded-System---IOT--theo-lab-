INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
N DB ?
SUM DB 0
.CODE
MAIN PROC
        MOV AX,@DATA 
        MOV DS,AX
        PRINT 'ENTER THE VALUE OF N: '
        MOV AH,1
        INT 21H
        SUB AL,48
        MOV N,AL
        PRINTN
        MOV AH,2
        MOV DL,'*'
        MOV BH,1  
        LOOP1:
        CMP BH,N
        JG EXIT_LOOP1
        MOV BL,BH
        LOOP2:
        CMP BL,N
        JG EXIT_LOOP2
        INT 21H
        INC BL
        JMP LOOP2
        EXIT_LOOP2:
        PRINTN
        INC BH
        JMP LOOP1
        EXIT_LOOP1:
        MOV AH,4CH
        INT 21H
        MAIN ENDP
END MAIN