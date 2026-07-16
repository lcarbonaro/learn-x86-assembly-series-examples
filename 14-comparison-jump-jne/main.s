section .data

msgEq db "Numbers are equal" , 0xa
msgEqLen equ $-msgEq

msgNotEq db "Numbers are NOT equal" , 0xa
msgNotEqLen equ $-msgNotEq

section .text
global _start

_start:
mov eax, 100
mov ebx, 10
cmp eax , ebx

je equal
jne notEqual

equal:
mov eax,4
mov ebx,1
mov ecx,msgEq
mov edx,msgEqLen
int 80h

jmp exit

notEqual:
mov eax,4
mov ebx,1
mov ecx,msgNotEq
mov edx,msgNotEqLen
int 80h

exit:
mov eax, 1
mov ebx, 0
int 80h