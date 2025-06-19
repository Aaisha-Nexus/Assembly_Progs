dosseg
.model small
.stack 100h
.data
.code
main proc
mov ax, @data
mov ds, ax

;inputting base
mov ah,1
int 21h
sub al,48
mov bl ,al ;mov the base in bl

;input the exp
mov ah,1
int 21h
sub al,48
mov cl, al ;here moved exponent in cl

mov ax, 1 ; like in c++ we do result=result*base here res is ax  (multiplicand)

exponent_loop:
mul bl ; here bl is like multiplier
dec cl ;decrease the exp till its zero
jnz exponent_loop

;now adjust ascii after loop ends and print
add al,48
mov dl, al
mov ah, 2
int 21h

mov ah,4ch
int 21h

main endp
end main
