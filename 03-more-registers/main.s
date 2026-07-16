section .text
global _start

_start:

; 32-bit registers
; a bit is either a 1 or a 0
mov eax, 12
mov ebx, 400
mov ecx, 500 
mov edx, 1000

; NOTE: mov eax, 0x123456789  
; will give error because value exceeds 32-bit length

; 16-bit registers
mov ax, 56
mov bx, 23
mov cx, 160 
mov dx, 200

; 8-bit registers
mov al, 12
mov bl, 2
mov cl, 4 
mov dl, 5

mov ah, 1
mov bh, 2
mov ch, 3 
mov dh, 4


; system interrupt
int 80h