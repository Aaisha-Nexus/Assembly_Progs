dosseg
.model small
.stack 100h
.data
     string db 'today is tuesday$'
.code
main proc
mov ax , @data
mov ds, ax

;take input for letter
mov ah,1
int 21h

mov dl,0 ;initiliase the counter with 0
mov bl , '$' ;initiliase dollae to compare
mov si, offset string

l1:
cmp bl, [si]
je toend

cmp al , [si] ;compare the input letter with current holded char
je counter ; if yes, then go increase the counter

inc si
jmp l1   ;move to next character in string

counter:
add dl, 1 ; dl=dl+1
inc si
jmp l1

toend: ;if teh string got to end
add dl,48
mov ah,2
int 21h

mov ah,4ch
int 21h

main endp
end main
