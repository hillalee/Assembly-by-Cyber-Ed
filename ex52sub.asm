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
    mov ax, 01h
    mov bx, 01h
    sub ax, bx
; --------------------------
	
exit:
	mov ax, 4c00h
	int 21h
END start


