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
        MOV BH,1  
        LOOP1:
        CMP BH,N
        JG EXIT_LOOP1
        MOV BL,1
        LOOP3:
        CMP BL,BH
        JGE LOOP2
        PRINT ' '
        INC BL
        JMP LOOP3
        MOV BL,BH
        LOOP2:
        CMP BL,N
        JG EXIT_LOOP2
        PRINT '*'
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