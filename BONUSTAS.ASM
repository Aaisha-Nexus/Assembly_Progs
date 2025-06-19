;3 different types of triangle
dosseg
.model small
.stack 100h
.data
.code
main proc

               ;RIGHT ANGLE TRIANGLE
mov ah,6  ;scroll functiion
mov al,10  ;set number of lines
mov bh,00000001b ;set color
mov ch,5 ;START Y
mov cl,5 ;start x
mov dh,10 ;end y
mov dl,10  ;end x
int 10h    ;call interrupt

              ;LEFT ANGLE TRIANGLE
mov ah,6
mov al,10
mov bh,00000010b ;set color green
mov ch,5
mov cl,20
mov dh,10
mov dl,15
int 10h

              ;EQUILATERAL TRIANGLE
mov ah,6
mov al,10
mov bh,00000011b ;set color cyan
mov ch,15
mov cl,40
mov dh,10
mov dl,35
int 10h

mov ah,4ch
int 21h

main endp
end main

