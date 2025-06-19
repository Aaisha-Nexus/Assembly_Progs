;same code but with 07h
dosseg
.model small
.stack 100h
.code
main proc

mov ah,7   ;using scroll down function
mov al,10   ;set lines
mov bh,01000000b ;set color magenta

mov ch,0 ;set starting position
mov cl,0

mov dh,25  ;set bottom and left
mov dl,25

int 10h ;calling interrupt
mov ah,4ch
int 21h
main endp
end main

