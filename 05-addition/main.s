section .text
global _start

_start:
mov eax, 4
mov ebx, 5
add ebx, eax    ; ebx = ebx + eax

int 80h
