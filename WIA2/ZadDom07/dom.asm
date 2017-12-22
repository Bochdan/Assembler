org 100h

	mov ah, 00
	mov al, 12h
	int 10h

%macro ustawkursor 0
	mov ah,02
	mov bx,00
	mov dh,[y]
	mov dl,[x]
	int 10h
%endmacro

%macro wypiszznak 0
	mov ah, 0ch
	mov bh, 00
	mov al, 0xD0
	mov bl, 70
	int 10h
%endmacro

%macro wypiszpustyznak 0
	mov ah, 09
	mov al, 03h
	mov bl, 00
	mov cx, [i]
	int 10h
%endmacro

;oczy
ustawkursor
mov [i], word 2
wypiszznak
add [x], word 2
ustawkursor
mov [i], word 1
wypiszpustyznak
add [x], word 1
ustawkursor
mov [i], word 2
wypiszznak

;policzki
sub [x], word 4
add [y], word 2
ustawkursor
mov [i], word 1
wypiszznak
add [x], word 1
ustawkursor
mov [i], word 5
wypiszpustyznak
add [x], word 5
ustawkursor
mov [i], word 1
wypiszznak

;usta
sub [x], word 5
add [y], word 1
ustawkursor
mov [i], word 5
wypiszznak

mov ax, 4c00h
int 21h

x:dw 40
y:dw 10
i:dw 01
