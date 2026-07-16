section .text
global _start

_start:
mov eax, 4   ; the first operand must be loaded in the eax register
mov ecx, 5   ; the second operand is then loaded onto another register
mul ecx


int 80h

