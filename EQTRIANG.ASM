;equilateral triangle
dosseg
.model small
.stack 100h
.data
.code

main proc
mov ah,06h ;scroll up function
mov al,0

 mov bh, 01000000b ;set red color
 mov ch,10
 mov cl,0  ;start column
 mov dh,10
 mov dl,15   ;end column
 int 10h

 ;row 2
 mov bh, 00100000b ;set another color
 mov ch,9
 mov cl,1
 mov dh,9
 mov dl,14
 int 10h

 ;row 3
 mov bh,01000000b  ;set red
 mov ch,8
 mov cl,2
 mov dh,8
 mov dl,13
 int 10h

 ;row 4
 mov bh,00100000b
 mov ch,7
 mov cl,3
 mov dh,7
 mov dl,12
 int 10h

 ;row 5
 mov bh, 01000000b
 mov ch,6
 mov cl,4
 mov dh,6
 mov dl,11
 int 10h


 ;row 6
 mov bh, 00100000b
 mov ch,5
 mov cl,5
 mov dh,5
 mov dl,10
 int 10h

 ;row 7
 mov bh, 01000000b
 mov ch,4
 mov cl,6
 mov dh,4
 mov dl,9
 int 10h


 mov ah,4ch
 int 21h

 main endp
 end main
 
