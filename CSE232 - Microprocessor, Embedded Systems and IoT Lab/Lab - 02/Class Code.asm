INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H

.DATA
 VAR DB '5'
DAR1 DB ?
MSG DB "MD. SAIFUL ISLAM $"
PUT DB 10,13, '191-15-2584 $'  
CHAR DB 10,13, 'ASHULIA $'

.CODE
; 1->SINGLE KEY INPUT
; 2->SINGLE KEY INPUT
; 9->STRING CHARACTER OUTPUT                   
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX 
     
    
    MOV AH,2
    MOV DL,VAR
    INT 21H
    
    MOV AH,2
    MOV DL, 10
    INT 21H
    MOV DL,13
    INT 21H
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    MOV AH,
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN