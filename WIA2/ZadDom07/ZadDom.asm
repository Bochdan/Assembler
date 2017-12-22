org 100h

;         wiersz = 12
; w wierszu jest 80 znaków
; znak zajmuje 2 bajty
; segmenty są co 16 bajtów

x:dw 39
y:dw 10

mov ax, 0b800h+([y]*80+39)*2/16
mov es, ax
mov cx, 2
mov bp, 0
poczatekpetli:
        mov bp, cx
        sub bp, 1
        shl bp, 1 ; bp = bp << 1 ; 
        mov word [es:bp], 0D000h
loop poczatekpetli

mov ax, 4c00h
int 21h
         
