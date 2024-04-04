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
	mov al, 100
    mov al, 0
    mov al, 64h
    mov al, 1
    mov al, 01100100b

; --------------------------
	
exit:
	mov ax, 4c00h
	int 21h
END start


