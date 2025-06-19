;program to make procedure and macro of your own
dosseg

print macro p1
mov dx, offset p1
mov ah,9
int 21h
endm

.model small
.stack 100h
.data
        str1 db 'this program uses procedure and macro$'
        str2 db 'this is lab task 7$'
.code
main proc
mov ax,@data
mov ds,ax

print str1   ;calling printing macro
call enterkey      ;calling enterkey procedure
print str2      ;prints another string using macro
call exitprogram   ;calls exit procedure
main endp

enterkey proc  ;newline + carriage return procedure
mov dx,10
mov ah,2
int 21h
mov dx,13
mov ah,2
int 21h
ret
enterkey endp   ;ends here

exitprogram proc    ;exit procedure starts
mov ah,4ch
int 21h
ret
exitprogram endp     ;ends here
end main         ;final end main
