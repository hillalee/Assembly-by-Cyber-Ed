IDEAL
MODEL small
STACK 100h
DATASEG
; --------------------------
; Your code here
    Array db 1,2,3,3,2,1
    var1 db 6
    var2 db 9
    sum db 0
; --------------------------
CODESEG
start:
	mov ax, @data
	mov ds, ax
; --------------------------
; Your code here
	mov ax, 0
    lea bx, [Array]
    add al, [bx]
    add al, [bx + 1]
    add al, [bx + 2]
    add al, [bx + 3]
    add al, [bx + 4]
    add al, [bx + 5]
    mov ah, 0
    add ah, [var1]
    add ah, [var2]
    add [sum], ah

; --------------------------
	
exit:
	mov ax, 4c00h
	int 21h
END start


