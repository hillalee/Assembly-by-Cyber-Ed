IDEAL
MODEL small
STACK 100h
DATASEG
; --------------------------
; Your code here
var db ?

; --------------------------
CODESEG
start:
	mov ax, @data
	mov ds, ax
; --------------------------
; Your code here
mov [var], 5
; --------------------------
	
exit:
	mov ax, 4c00h
	int 21h
END start


