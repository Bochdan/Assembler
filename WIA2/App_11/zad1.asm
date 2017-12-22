org 100h

mov cx,


mov ax, 4C00h
int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
funcwiersz:
	push dx
	mov dx, sp
	add dx, 4
	
	mov ax,0b800h
	mov es,ax
	
	
	
	inc word [y]
		
pisz:
	inc word [x]
	mov bp, [y]
	imul bp, 80      ;y * 80
	add bp, word [x] ;y * 80 + x
	imul bp, 2       ;y * 80 + x * 2
	mov word [es:bp], 0022Ah
	dec cx
	cmp cx, 0
	jne pisz

	mov ax, [d

	pop dx
ret
;;;;;;;;;;;;;;;;;;;;;;;;;;;
funcpentl:

petla
	push	bx		w pierwszym + 1 potem długo nic i na koncu caly wiersz gwiazdek		;liczba gwiazdek
	push  	cx		(ls + 2)		;liczba spacji
	call funcwiersz
	add sp, 4



ret:

y dw 12
x dw 39
