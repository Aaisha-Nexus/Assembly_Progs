DOSSEG


.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
MOV BL, 1
ADD BL,2
MOV DL, BL
ADD DL, 48
MOV AH,2
INT 21H
MOV AH,4CH
INT 21H
MAIN ENDP
END MAIN
