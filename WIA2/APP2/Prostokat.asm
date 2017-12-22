org 100h


%macro wypisz 0
	mov ax, cs
	mov ds, ax        
	mov dx, [w]
	mov ah, 9  
	int 0x21 
%endmacro

%macro nowalinia 0
	mov dl,10
	mov ah, 02h
	int 21h
%endmacro

mov [w], word gwiazdka
mov ecx, [x]
petla:
	wypisz
loop petla

mov cx, [y]
boki:
	nowalinia
	wypisz

	mov [w], word pustyznak
	sub[x], word 2
	
	mov ecx, [x]
	pustka:
		wypisz
	loop pustka

	mov [w], word gwiazdka
	wypisz
loop boki


mov ax, 0x4C00
int 21h

gwiazdka db "*$"
pustyznak db " $"

x:dw 10
y:dw 3
w:dw 0;
