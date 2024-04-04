IDEAL
MODEL small
STACK 100h
DATASEG
; --------------------------
; Your code here
Array db 8 dup(0)
; --------------------------
CODESEG
start:
	mov ax, @data
	mov ds, ax
; --------------------------
; Your code here
	lea bx, [Array]
; --------------------------
	
exit:
	mov ax, 4c00h
	int 21h
END start


