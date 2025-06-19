; PROGRAM TO MULTIPLY 2 NUMBERS
DOSSEG
.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
        MOV AL,2
        MOV BL,4
        MUL BL
        
        MOV CH,AH
        MOV CL,AL
        

        MOV DL,CH
        ADD DL,48
        MOV AH,2
        INT 21H

        MOV DL,CL
        ADD DL,48
        MOV AH,2
        INT 21H

        MOV AH,4CH
        INT 21H
        MAIN ENDP
        END MAIN
