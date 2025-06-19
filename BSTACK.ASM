;BASIC STACK PUSH AND POP IMPLEMENTATION
DOSSEG
.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC

        MOV AX,2   ; 2 GOES TO AX
        PUSH AX    ; 2 GOES TO STACK
        POP AX    ; 2 AGAIN GOES TO AX
        ADD AX, 48
        MOV  DX,AX     ; MOV AX TO DX REG

        MOV AH,2 ;PRINT
        INT 21H
        MOV AH,4CH
        INT 21H

        MAIN ENDP
        END MAIN
