IDEAL
MODEL small
STACK 100h
DATASEG
; --------------------------
; Your code here
; --------------------------
CODESEG
start:
	mov ax, @data
	mov ds, ax
; --------------------------
; Your code here
	mov bx, ax ; ax into bx
    mov ax, bx
    mov ch, ah
    mov dl, al

; --------------------------
	
exit:
	mov ax, 4c00h
	int 21h
END start


