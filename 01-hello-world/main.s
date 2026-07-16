section .data
name db "Hello World"
nameLen equ $-name

section .text
global _start

_start:
mov eax,4   ; sys_write
mov ebx,1   ; std_out
mov ecx,name
mov edx,nameLen  
int 80h

mov eax,1
mov ebx,0
int 80h
