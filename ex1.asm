IDEAL
MODEL small
STACK 100h
DATASEG
CODESEG
start:
	mov ax, @data
	mov ds, ax
; --------------------------
; Your code here
mov ax, 1234h
mov bx, 0
mov bl, 34h
mov cx, 0
mov ch, 12h
; --------------------------
	
exit:
	mov ax, 4c00h
	int 21h
END start


