org 100h

%macro wypisz 0
		mov ah, 2
		mov dl, [bp]
		int 21h
		inc bp
		cmp byte [bp],0
%endmacro

a:
mov bp, tekst
wypisz
b: mov bp, tekst
wypisz
c: mov bp, tekst
wypisz
d: mov bp, tekst
wypisz
e: mov bp, tekst
wypisz
f: mov bp, tekst
wypisz
g: mov bp, tekst
wypisz
h: mov bp, tekst
wypisz
i: mov bp, tekst
wypisz
j: mov bp, tekst
wypisz

mov ax, 4c00h
int 21h

tekst: db 'Dzis jest wtorek', 0
