IDEAL
MODEL small
STACK 100h
DATASEG
; --------------------------
; Your code here
FirstVar db 6
SecondVar dw ?
ThirdVar dd ?
FirstString db 'Hello'
SecondString db 'World'
ThirdArray db 5 dup ('y')
; --------------------------
CODESEG
start:
	mov ax, @data
	mov ds, ax
; --------------------------
; Your code here
	mov ax, 5

; --------------------------
	
exit:
	mov ax, 4c00h
	int 21h
END start


