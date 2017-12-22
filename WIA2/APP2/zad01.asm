org 100h

mov ax, 0b800h
mov es,ax

mov bp,[y]
imul bp, 80
add bp, [x]
imul bp, 2

mov byte [es:bp], 01


mov ax, 0x4C00
int 21h

x:dw 39
y:dw 12
