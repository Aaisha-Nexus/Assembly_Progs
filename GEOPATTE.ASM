;different patterns
dosseg
.model small
.stack 100h
.data
.code
main proc
                         ;upper box
mov ah,7 ;use scroll down
mov al,10
mov bh,01000000b ;set red color
mov ch,0 ;set starting position
mov cl,0
mov dh,25 ;set bottom and left
mov dl,25
int 10h
                       ;middle rectangle
mov ah,06h
mov al,10
mov bh, 00110000b ;set color cyan
mov ch,5
mov cl,5
mov dh,10
mov dl,10
int 10h

                    ;inner rectangle
mov ah,06h
mov al,10
mov bh, 00100000b ;set color green
mov ch, 11
mov cl,11
mov dh,18
mov dl,18
int 10h

mov ah,4ch
int 21h

main endp
end main

