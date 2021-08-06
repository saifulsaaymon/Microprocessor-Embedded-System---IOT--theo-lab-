INCLUDE 'EMU8086.INC' 
.MODEL SMALL 
.STACK 100H 
.DATA 
X DB ? 
 
.CODE 
MAIN PROC 
MOV AX,@DATA 
MOV DS,AX 
MOV AH,1 
INT 21H  
MOV X,AL 
 
CMP AL,'a' 
JE VL 
CMP AL,'e' 
JE VL 
CMP AL,'i' 
JE VL 
CMP AL,'o' 
JE VL 
CMP AL,'u' 
JE VL 
 CMP AL,'A' 
JE VL 
CMP AL,'E' 
JE VL 
CMP AL,'I' 
JE VL 
CMP AL,'O' 
JE VL 
 
CMP AL,'U' 
JE VL 
      MOV CL,6       
      MOV BL,6 
      MOV BH,9 
       
      START1: 
      CMP BL,BH 
      JG SECOND 
      PRINTN 
      ADD CL,48 
      MOV AH,2 
      MOV DL,CL 
      INT 21H 
      SUB CL,48 
      INC CL 
      INC BL 
      JMP START1  
JMP SECOND 
 
VL: 
      MOV CL,1 
      MOV BL,1       
      MOV BH,5       
      START2:             
      CMP BL,BH 
      JG SECOND 
      PRINTN 
      ADD CL,48 
      MOV AH,2 
      MOV DL,CL 
      INT 21H 
      SUB CL,48 
      INC CL 
      INC BL 
      JMP START2         
SECOND:  
PRINTN  
MOV AH,1 
INT 21H  
                
CMP AL,X 
JE EXIT  
      MOV CL,2  
      
      MOV BL,2      
      MOV BH,8 
       
      START3: 
      CMP BL, BH 
      JG EXIT 
      PRINTN 
      ADD CL,48 
      MOV AH,2 
      MOV DL, CL 
      INT 21H 
      SUB CL,48 
      INC CL 
      INC CL 
      INC BL 
      INC BL 
      JMP START3 
 
EXIT: 
 MOV AH,4CH 
 INT 21H 
MAIN ENDP 
END MAIN