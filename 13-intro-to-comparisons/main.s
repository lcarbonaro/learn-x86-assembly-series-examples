section .data
msg db   "Equal" , 0xa   ; newline at end
msgLen   equ $-msg
msgNE    db "Not Equal" , 0xa
msgNELen equ $-msgNE

section .text
global _start

_start:
mov eax, 20
mov ebx, 15

cmp eax, ebx   ; compare in effect attempts a subtract eax - ebx
               ; operand registers not affected, only EFLAGS register

je  equal 
jmp notEqual

equal:
mov eax, 4        ; sys_write
mov ebx, 1        ; stdout terminal
mov ecx, msg
mov edx, msgLen
int 80h
jmp exit

notEqual:
mov eax, 4        ; sys_write
mov ebx, 1        ; stdout terminal
mov ecx, msgNE
mov edx, msgNELen
int 80h

exit:
mov eax, 1
mov ebx, 0
int 80h