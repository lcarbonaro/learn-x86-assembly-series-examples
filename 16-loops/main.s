section .text
global _start

_start:
mov ecx, 5      ; loop counter

loop_start:
dec ecx         ; decrement i.e. ecx = ecx - 1
jnz loop_start  ; jump if not zero


exit:
mov eax, 1
mov ebx, 0
int 80h
