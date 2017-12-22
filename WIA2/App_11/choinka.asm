org 100h

push 4
call funcpentl
add sp, 2


mov ax, 4C00h
int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
funcwiersz:
	push dx
	mov dx, sp
	add dx, 4




	pop dx
ret
;;;;;;;;;;;;;;;;;;;;;;;;;;;
funcpentl:
	push bp
	mov bp, sp
	add sp,4
	pusha



	push word [gwiazdki]
	push word [spacje]
	call funcwiersz
	add sp, 4
	add [spacje], 2


	popa
	pop bp
ret:

y dw 12
x dw 39
spacje dw 0
gwiazdki dw 1
