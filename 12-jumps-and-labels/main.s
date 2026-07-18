section .text
global _start

_start:
jmp subtraction  ; refers to label, can jump up or down

addition:
mov eax, 12
mov ebx, 13
add eax, ebx

subtraction:
mov eax, 20
mov ebx, 15
sub eax, ebx
jmp addition     ; will jump back up to addition label
                 ; note infinite loop scenario

exit:
mov eax, 1
mov ebx, 0
int 80h
