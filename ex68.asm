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
    xor ax, ax
    xor bx, bx
    add ax, 2
    add ax, 2
    
    ;--- first ex
    mov bx, 3
    mov ax, bx
    ;--- second ex

; --------------------------
	
exit:
	mov ax, 4c00h
	int 21h
END start


