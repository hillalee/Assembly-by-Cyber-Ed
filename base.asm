IDEAL
MODEL small
STACK 100h
DATASEG
; --------------------------
; Your code here
var1 db 6
; --------------------------
CODESEG
start:
	mov ax, @data
	mov ds, ax
; --------------------------
; Your code here
	mov ax, 5
	mov ax, bx
	mov [120], ax
	; ----
	mov ax, 5
	mov ax, 6
	; ----
	mov ax, 2
	mov bx, 2
	mov cx, 2
	mov dx, 2
	; ----
	mov bx, ax
	mov ax, cx
	;--
	mov ax, dx
; --------------------------
	
exit:
	mov ax, 4c00h
	int 21h
END start


