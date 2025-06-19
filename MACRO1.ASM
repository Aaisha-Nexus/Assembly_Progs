;program to use macro to print strings
dosseg

print macro p1 ;define macro in start and pass parameter
mov dx, offset p1
mov ah,9
int 21h
endm
.model small
.stack 100h
.data
        str1 db 'I AM AAISHA IQBAL $'
        str2 db  'I LIVE IN KARACHI $'
      
.code
main proc
mov ax, @data
mov ds,ax

PRINT STR1 ;THIS PRINTS FIRST STRING USING MACRO
call enterkey ;this calls enterkey procedure
PRINT STR2
mov ah, 4ch
int 21h
main endp

enterkey proc
mov dx,10
mov ah,2
int 21h
mov dx,13
mov ah,2
int 21h
ret
enterkey endp

end main


