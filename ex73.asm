IDEAL
MODEL small
STACK 100h
DATASEG
; --------------------------
; Your code here

    var1 db 255
    var2 db 13
    result dw ?

    var3 db -120
    var4 db 2
    result2 dw ?

    Array1 db 1, -2, 3, -4
    Array2 db 4 dup(3)
    sum dw 0
; --------------------------
CODESEG
start:
	mov ax, @data
	mov ds, ax
; --------------------------

; part 1
	mov ax, 0
    mov bl, [var1]
    mov al, [var2]
    mul bl
    mov [result], ax

; part 2
    mov ax, 0
    mov bl, [var3]
    mov al, [var4]
    imul bl
    mov [result2], ax

; part 3
    mov ax, 0
    mov bl, [Array1]
    mov al, [Array2]
    imul bl
    add [sum], ax

    mov ax, 0
    mov bl, [Array1 + 1]
    mov al, [Array2 + 1]
    imul bl
    add [sum], ax

    mov ax, 0
    mov bl, [Array1 + 2]
    mov al, [Array2 + 2]
    imul bl
    add [sum], ax

    mov ax, 0
    mov bl, [Array1 + 3]
    mov al, [Array2 + 3]
    imul bl
    add [sum], ax



; --------------------------
	
exit:
	mov ax, 4c00h
	int 21h
END start


