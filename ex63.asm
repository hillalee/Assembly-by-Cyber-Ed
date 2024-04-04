IDEAL
MODEL small
STACK 100h
DATASEG
; --------------------------
; Your code here
FirstArray db 3
SecondArray db 5 dup ('a')
ThirdArray db 7 dup ('h')
;--
FiveArray db 10 dup (5)
FiveWordArray dw 10 dup (5)
;--
ArrayOfArray db 20 dup (4, 5, 6)
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


