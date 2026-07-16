section .data
num1   dd 10
num2   dd 6
result dd 0

section .text
global _start

_start:
mov eax, 20
mov ebx, 15
sub eax, ebx    ; eax = eax - ebx

mov eax, [num1]         ; square brackets means contents of that memory address
sub eax, [num2]   
mov [result], eax       

; to see the value in result, link with -g flag
; ld -m elf_i386 -g main.o -o main
; then (gdb) print /d (int) result

int 80h
