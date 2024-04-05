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
    mov ax, 0
    mov bx, 0
    add ax, bx
; --------------------------
	
exit:
	mov ax, 4c00h
	int 21h
END start


