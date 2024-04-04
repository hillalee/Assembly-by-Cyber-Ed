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
    mov al, 78h
    mov ah, 20h
    add al, ah
; --------------------------
	
exit:
	mov ax, 4c00h
	int 21h
END start


