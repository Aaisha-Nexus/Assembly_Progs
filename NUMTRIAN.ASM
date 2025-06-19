dosseg
.model small
.stack 100h
.data
.code
main proc
mov ax, @data
mov ds, ax

mov ah,1
int 21h  ;input number

mov cl,al ;move the number from al to cl
sub cl,48 ;adjust ascii

call enterkey

mov bx,1
l1:
push cx
mov bx,cx ; move the current row to cx for increments

l2: ;inner loop
mov dx,bx ;move the numbers to be printed in dl
add dx,48 ;adjust ascii
mov ah ,2
int 21h
loop l2

call enterkey

inc bl
pop cx

loop l1

mov ah, 4ch
int 21h
main endp

enterkey proc
mov dl, 10
mov ah,2
int 21h
mov dl, 13
mov ah,2
int 21h
ret
enterkey endp

end main


