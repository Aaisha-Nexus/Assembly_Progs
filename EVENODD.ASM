dosseg
.model small
.stack 100h
.data
        ev db 'even$'
        od db 'odd$'
.code
main proc
mov dx, @data
mov ds, ax

mov ah,1
int 21h
sub al, '0'

mov bl,2
div bl

cmp ah,0
je iseven

call enterkey
lea dx, od
mov ah,9
int 21h

mov ah,4ch
int 21h

iseven:
call enterkey
lea dx, ev
mov ah,9
int 21h

mov ah,4ch
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
