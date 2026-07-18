section .data
msg db   "Equal" , 0xa   ; newline at end
msgLen   equ $-msg

section .text
global _start

_start:
mov eax, 15
mov ebx, 15

cmp eax, ebx   ; compare in effect attempts a subtract eax - ebx
               ; operand registers not affected in any way
               ; EFLAGS register holds zero flag (ZF) 
               ; if ZF bit is on, then result of CMP was zero 
               ; i.e. equal numbers compared

je  equal      ; jumps to label "equal" if CMP result was equal
jmp exit       ; else jumps to label "exit"

equal:
mov eax, 4        ; sys_write
mov ebx, 1        ; stdout terminal
mov ecx, msg
mov edx, msgLen
int 80h

exit:
mov eax, 1
mov ebx, 0
int 80h