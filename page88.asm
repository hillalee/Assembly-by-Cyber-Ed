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
    mov al, 4Bh
    mov ah, 4Bh
    sub al, ah
; --------------------------
	
exit:
	mov ax, 4c00h
	int 21h
END start


