IDEAL
MODEL small
STACK 100h
DATASEG
; --------------------------
    var1 db 21
    var2 db 20
    DivResult db ?
    Remainder db ?

    var3 db -10
    var4 db 5
    ; can use DivResult and Remainder here as well

    ; dw vars
    var5 dw 80
    var6 dw 6
    DivResultWord dw ?
    RemainderWord dw ?


; --------------------------
CODESEG
start:
	mov ax, @data
	mov ds, ax
; --------------------------

; part 1, unsigned
    mov ax, 0
	mov al, [var1]
    div [var2]
    mov [DivResult], al
    mov [Remainder], ah

; part 2, signed
    ; reset values
    mov ax, 0
    mov [DivResult], 0
    mov [Remainder], 0

	mov al, [var3]
    idiv [var4]
    mov [DivResult], al
    mov [Remainder], ah

; part 3, word sized vars

    mov ax, 0
    mov dx, 0

	mov ax, [var5]
    div [var6]
    mov [DivResultWord], ax
    mov [RemainderWord], dx

; --------------------------
	
exit:
	mov ax, 4c00h
	int 21h
END start


