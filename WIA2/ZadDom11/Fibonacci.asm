org 100h	
	

push 0	;temp
push 1	;F(n+1)
push 0	;Fn
push 5 	;n

call fibonacci
add sp, 8


mov ax, 4C00h
int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
fibonacci:
	push bp
	mov bp, sp
	add bp, 4
	pusha
	
	mov cx, [bp]		;cx = n
	mov ax, [bp+2]		;ax = Fn
	mov bx, [bp+4]		;bx = F(n+1)
	mov dx, [bp+6]		;dx = temp
	
	cmp cx, 0
	je koniec			;gdy cx = 0
	
	dec cx				;cx--
	mov dx, bx			;temp = F(n+1)
	add bx,ax			;F(n+1) = F(n+1)+Fn
	mov ax,dx			;Fn = temp
	
	push dx				;temp
	push bx				;F(n+1)
	push ax				;Fn
	push cx				;n
	call fibonacci	
	add sp, 8

	koniec:
	mov [wynik], ax
	popa
	mov ax, [wynik]
	pop bp
ret

wynik db 0
