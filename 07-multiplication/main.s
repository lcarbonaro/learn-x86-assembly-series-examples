section .text
global _start

_start:
mov eax, 4   ; the first operand must be loaded in the eax register
mov ecx, 5   ; the second operand is then loaded onto another register
mul ecx      ; eax = eax * ecx = 20

; note: 
; MUL is used for multiplying unsigned (positive) numbers
; IMUL is used for signed numbers

mov eax, -3  
mov ecx, 5   
imul ecx      ; eax = eax * ecx = -15



int 80h

