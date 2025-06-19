;basic graphics code from lecture
dosseg
.model small
.stack 100h
.code
main proc

mov ah,6 ;set function first of scroll window up
mov al,10   ;set number of lines
mov bh,00010000b ;set color as light blue

mov ch,0 ;set starting position coordinates
mov cl,0

mov dh,24 ;set bottom and left
mov dl,24
int 10h ;call the interrupt

mov ah,4ch
int 21h
main endp
end main
