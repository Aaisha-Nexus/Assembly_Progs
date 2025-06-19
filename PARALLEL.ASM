;text inside parallelogram
dosseg
.model small
.stack 100h
.data
  msg1 db 'AAISHA$'  ;msg to print inside parallelogram
.code
main proc

mov ax, @data
mov ds,ax

mov ah,6 ;scroll up function
mov al,0
mov bh,00100000b ;set color green
mov ch,20  ;top left row
mov cl,5    ;top left column
mov dh,20   ;bottom right row
mov dl,25   ;bottom right column
int 10h      ;call interrupt

mov bh,00100000b     ;again set the coordinates
mov ch,21
mov cl,5
mov dh,21
mov dl,24
int 10h

mov bh,00100000b
mov ch,22
mov cl,4
mov dh,22
mov dl,23
int 10h


mov bh,00100000b
mov ch,23
mov cl,3
mov dh,23
mov dl,22
int 10h

mov ah,02h  ;set cursor position
mov bh,0
mov dh,23   ;adjust row
mov dl,5    ;adjust column
int 10h

mov dx,offset msg1  ;print the msg
mov ah,9
int 21h

mov ah,4ch        ;exit the prog
int 21h

main endp
end main
