;input a string and reverse it
dosseg
.model small
.stack 100h
.data
        msg1 db "original string: $"
        msg2 db "reverse string: $"
        str db 20 dup('$')
.code
main proc
        mov ax, @data
        mov ds, ax

        mov dx, offset msg1    ;DISPLAY ORIGINAL STRING MESSAGE
        mov ah,9
        int 21h

        mov si,offset str         ;SI POINTS TO STR
        mov cx, 20                 ;START THE COUNTER FROM 20

        L1:
        mov ah,1                 ;TAKE THE INPUT
        int 21h
        cmp al,13                ;COMPARE WITH ENTER KEY
        je final_input           ;JUMP TO FINAL OUTPUT IF ENTER KEY PRESSED
        mov [si], al             ;STORE ENTERED STR AT SI ADDRESS
        push ax                  ;PUSH THE STRING TO STACK
        inc si                   ;INC SI TO NEXT MEMORY LOCATION
        inc cx                   ;INC THE CHARACTER COUNTER
        jmp l1                   ;REPEAT FOR NEXT INPUT TILL ENTER

        final_input:             ;IF ENTER KEY IS PRESSED THEN THIS HAPPENS
        mov dx, offset msg2    ;MOV THE REVERSE STRING MSG
        mov ah,9               ;PRINT IT
        int 21h

        ;pop in reverse order
        print_reverse:
        cmp cx,0        ;TO PRINT CHARACTER IN REVERSE CHECK IF ITS PRINTED
        je exit      ;IF CX=0 THEN EXIT MEANS ITS COMPLETED
        pop dx        ;POP IN REVERRSE ORDER
        mov ah,2      ;PRINT
        int 21h
        dec cx        ;DECREMENT COUNTER
        jmp print_reverse   ;REPEAT TILL STACK IS EMPTY

        exit:
        mov ah,4ch
        int 21h

        main endp
        end main
                  
