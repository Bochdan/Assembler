org 100h

mov ah, 00h
mov al, 12h
int 10h

%macro piszpixel 0
	mov ah, 0ch
	mov al, 01101b
	mov bh, 0
	mov dx, [y]
	mov cx, [x]
	int 10h
%endmacro

%macro piszpustypixel 0
	mov ah, 0ch
	mov al, 0000b
	mov bh, 0
	mov dx, [y]
	mov cx, [x]
	int 10h
%endmacro

piszpixel
add [x], word 1
piszpixel
add[x], word 1
piszpustypixel
add [x], word 1
piszpixel
add [x], word 1
piszpixel

sub [x], word 5
add [y], word 2
piszpixel
add[x], word 1
piszpustypixel
add[x], word 1
piszpustypixel
add[x], word 1
piszpustypixel
add[x], word 1
piszpustypixel
add[x], word 1
piszpustypixel
add [x], word 1
piszpixel

sub [x],word 5
add [y],word 1
piszpixel
add [x],word 1
piszpixel
add [x],word 1
piszpixel
add [x],word 1
piszpixel
add [x],word 1
piszpixel

mov ax, 4c00h
int 21h

x:dw 40
y:dw 39
