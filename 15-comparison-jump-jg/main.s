section .data
msg    db "Greater" , 0xA
msgLen equ $-msg

section .text
global _start

_start:
mov eax, 18
mov ebx, 10
cmp eax ,ebx

jg  greater
jmp exit

greater:
mov eax, 4
mov ebx, 1
mov ecx, msg
mov edx, msgLen
int 80h

exit:
mov eax, 1
mov ebx, 0
int 80h
