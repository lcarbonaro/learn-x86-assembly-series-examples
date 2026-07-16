section .text
global _start

_start:

; 32-bit registers
; registers eax, ebx, ecx, edx  
mov ebx, 12   ;put the value 12 inside the register ebx
mov eax, 8    ;put the value 8 in eax
mov edx, 32   ; mov <destination>,<source or value>

; 16-bit registers
; registers ax, bx, cx, etc. are 
; lower half (lower 16-bits) of eax, ebx, ecx etc.

; 8-bit registers
; registers ah, al, bh, bl, etc. are 
; higher/lower half (8-bits) of ax, bx, cx etc.

mov al, 2  ;put the value 2 inside the register al
mov bl, 1  
mov cl, 15
mov dl, 10

; system interrupt
int 80h
