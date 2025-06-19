dosseg
.model small
.stack 100h
.data
.code
main proc
mov ax, @data ;for user input
mov ds,ax

mov ah,1  ;user input
int 21h

call enterkey
mov cl,al   ;mov input to counter register
sub cl,48   ;adjust ascii



mov bx,1
l1:
push cx ;push counter to stack
mov cx, bx

l2:
mov dx,bx
add dx,48
mov ah,2
int 21h
loop l2
call enterkey
inc bl
pop cx
loop l1

mov ah,4ch
int 21h
main endp

enterkey proc ;enterkey procedure
mov dl,13
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h
ret
enterkey endp
end main
