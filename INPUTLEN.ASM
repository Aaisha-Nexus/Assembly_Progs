dosseg
.model small
.stack 100h
.data
       str1 db 100 dup('$')
.code
main proc

mov ax , @data
mov ds ,ax
mov bl,0 ; set counter to 0
mov si, offset str1

l1:
mov ah,1
int 21h
cmp al,13

je programend
mov [si], al
inc si
inc bl
loop l1

programend:
mov dl,bl
add dl, 48
mov ah,2
int 21h

mov ah,4ch
int 21h
main endp
end main



