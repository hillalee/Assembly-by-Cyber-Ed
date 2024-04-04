IDEAL
MODEL small
STACK 100h
DATASEG
    ByteVarName1 db 200 ; store the value 200 (C8h)
    ByteVarName2 db 10010011b ; store the bits 10010011 (93h)
    ByteVarName3 db 10h ; store the value 16 (10h)
    ByteVarName4 db 'B' ; store the ASCII code of the letter B (42h (
    ByteVarName5 db -5 ; store the value -5 (0FBh(
    WordVarName dw 1234h ; 34h in low address, 12h in high address
    DoubleWordVarName dd -5 ; store -5 as 32 bit format (0FFFFFFFBh 
    CODESEG
start:
	mov ax, @data
	mov ds, ax
; --------------------------
; Your code here

; --------------------------
	
exit:
	mov ax, 4c00h
	int 21h
END start