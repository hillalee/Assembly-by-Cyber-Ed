IDEAL
MODEL small
STACK 100h
DATASEG
; --------------------------
; Your code here
ZeroArray db 8 dup(0)
; --------------------------
CODESEG
start:
	mov ax, @data
	mov ds, ax
; --------------------------
; Your code here
	mov ax, 0AABBh
    mov [1], ax
    mov [es:1], ax

; --------------------------
	
exit:
	mov ax, 4c00h
	int 21h
END start


