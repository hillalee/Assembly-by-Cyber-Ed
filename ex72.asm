IDEAL
MODEL small
STACK 100h
DATASEG
; --------------------------
; Your code here

    var1 db 9
    var2 db 6
    diff db 0
    Array1 db 4 dup(9)
    Array2 db 1, 2, 3, 4
    Array3 db 4 dup(0)

; --------------------------
CODESEG
start:
	mov ax, @data
	mov ds, ax
; --------------------------
; obviously this isn't the optimal solution, but it's
;        a way to get to know this language
; part 1
	mov ax, 0
    add ah, [var1]
    sub ah, [var2]
    add [diff], ah

; part 2
    mov ax, 0

    ; 1 item
    add ah, [Array1]
    sub ah, [Array2]
    mov [Array3], ah

    ; 2 item
    mov ah, 0
    add ah, [Array1 + 1]
    sub ah, [Array2 + 1]
    mov [Array3 + 1], ah

    ; 3 item
    mov ah, 0
    add ah, [Array1 + 2]
    sub ah, [Array2 + 2]
    mov [Array3 + 2], ah

    ; 4 item
    mov ah, 0
    add ah, [Array1 + 3]
    sub ah, [Array2 + 3]
    mov [Array3 + 3], ah
    



; --------------------------
	
exit:
	mov ax, 4c00h
	int 21h
END start


