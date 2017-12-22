org 100h

call czytaj

	mov bx, 0
	
wypisz:
	mov dl, [tekst+bx]
	mov ah, 2
	int 21h
	
	inc bx
	mov al, [tekst+bx]
	cmp al, 0
	jne wypisz				;gdy al != 0 to skok
	

mov ax, 4C00h
int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
czytaj:
	pusha
	mov bx, 0

petla:
	mov ah, 7
	int 21h
	
	mov [tekst+bx],  al
	inc bx
	cmp al, 13
	jne petla				;gdy al != enter to skok
	
	mov [tekst+bx], word 0
	
	
	popa
ret
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
tekst db ""
