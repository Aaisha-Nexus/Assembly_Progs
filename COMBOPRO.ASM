dosseg
; program which uses jmp, array and mul/div
.model small
.stack 100h
.data
 arr db 2 dup(?)  ; array to store 2 numbers
 result dw ? ; to store result
 str1 db "result is less than 10$"
 str2 db "result is greater than 10$"
 .code
 main proc
        mov ax, @data
        mov ds, ax

        ;input 1st number
        mov ah,1
        int 21h
        sub al,48 ; adjust ascii
        mov arr, al

        ;input 2nd number
        mov ah,1
        int 21h
        sub al,48
        mov arr[1],al

        ;multiply 2 numbers
        mov al,arr[0]
        mov bl, arr[1]
        mul bl
        mov result, ax

        ;check if result <10
        mov bx, 10
        cmp ax, bx
        jl printless ; if ax<10, jump to printless
        jmp printmore ;otherwise, jmp to printmore

        printless:
        mov dx, offset str1
        mov ah,9
        int 21h
        jmp endprog

        printmore:
        mov dx, offset str2
        mov ah,9
        int 21h

        endprog:
        mov ah,4ch
        int 21h
        main endp
        end main

