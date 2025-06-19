dosseg
.model small
.stack 100h
.data
  msg1 db  "enter first string: "   
  msg2 db  "enter second string: "
  string1 db 20 dup('$') ;user enters first string
  string2 db 20 dup('$')  ;user enter second string
.code
main proc
mov ax , @data
mov ds , ax

;print msg1
lea dx, msg1
mov ah,9
int 21h

;take input
mov di, offset string1

read1:
mov ah,1 ;read the input
int 21h
cmp al, 13   ;compare with enter
je ask_second ;if enter key pressed then ask to take second input
inc byte ptr [di], al
inc di
jmp read1

ask_second:  ;this displays second input msg
lea dx, msg2
mov ah,9
int 21h

mov di, offset string2

read2:
mov ah,1 ;second string input
int 21h
cmp al,13    ;again compare with enterkey
je compare     ;if enter now go to compare both
mov byte ptr [di], al  ;else keep saving input in di and increment di
inc di
jmp read2

compare:
lea si, string1    ;si points to string1

loop1:
mov byte ptr al, [si]
cmp al , '$'  ;compare with enterkey
je done_outer  ;if entered then go to done outer means end 
lea di , string2  ;di points to string2

loop2:         ;inner loop comparison for chaarcters
mov byte ptr bl , [di]
cmp bl , '$'
je skip
cmp al, bl
je print_char
inc di
jmp loop2

print_char:
mov dl,al
mov ah,2
int 21h
jmp skip

skip:
inc si
jmp loop1

done_outer:
mov ah,4ch
int 21h

main endp
end main
