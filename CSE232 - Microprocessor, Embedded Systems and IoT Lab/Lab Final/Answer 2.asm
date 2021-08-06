INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
 ARR DB 6 DUP
.CODE

MAIN PROC 
    MOV CX,6 
    MOV SI,OFFSET ARR
    
    L1:
    MOV AH,1
    INT 21H 
    MOV [SI],AL
    INC SI
    LOOP L1  
    
    
       
    MOV CX,6
    DEC CX
    OUTER:
    MOV BX,CX
    MOV SI,0
    
    COMPLOOP:
    MOV AL,ARR[SI]
    MOV DL,ARR[SI+1]
    CMP AL,DL
    
    JC NOSWAP  
    
    MOV ARR[SI],DL
    MOV ARR[SI+1],AL
    
    NOSWAP:
    INC SI
    DEC BX
    JNZ COMPLOOP
    LOOP OUTER 
    
    MOV SI,OFFSET ARR 
    MOV CX,6   
    PRINTN
    
    L2: 
    MOV DL,[SI]
    MOV AH,2
    INT 21H
    INC SI
    LOOP L2
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
 
    MOV AH,4CH    
    INT 21H       
       
    MAIN ENDP
END MAIN