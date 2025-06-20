DOSSEG
;PROG TO DECLARE VARIABLES USING DIFFERENT METHODS AND PRINT
.MODEL SMALL
.STACK 100H
.DATA

   var1 db 51 ; variable declared as number for value 3
   var2 db 'A' ;variable declared as character 'A'
   var3 db 'KARACHI$' ;variable declared as string
   var4 db ? ;uninitialized variable declaration
   
.CODE
MAIN PROC
 MOV AX, @DATA ;FOR ACCESSING ADDRESS OF DECLARED VARIABLES IN DATA SEGMENT
 MOV DS, AX

 ;TO PRINT VAR1
 MOV DL,var1
 MOV AH,2
 INT 21H

 ;TO LEAVE A LINE
 MOV DX,10   ;TO COME TO NEXT LINE 
 MOV AH,2
 INT 21H
 MOV DX,13    ;FOR CARRIAGE RETURN
 MOV AH,2
 INT 21H

 ;TO PRINT VAR2
 MOV DL,var2
 MOV AH,2
 INT 21H

 ;TO LEAVE LINE AGAIN
 MOV DX,10
 MOV AH,2
 INT 21H
 MOV DX,13
 MOV AH,2
 INT 21H

 ;TO PRINT VAR3
 MOV DX, OFFSET var3   ;OFFSET FOR STRING
 MOV AH,9
 INT 21H

 MOV DX,10
 MOV AH,2
 INT 21H
 MOV DX,13
 MOV AH,2
 INT 21H

 ;TO PRINT VAR4 USER INPUT
 MOV AH,1
 INT 21H
 MOV BL,AL   ;SAVE USER INPUT VALUE IN AL AND MOVE IT TO BL
 MOV [var4],BL  ;MOVE VALUE IN BL TO VAR4
 MOV DL,[var4]   ;MOV VAR3 FINALLY TO DL FOR PRINTING
 MOV AH,2
 INT 21H

 MOV AH,4CH
 INT 21H
 MAIN ENDP
 END MAIN

