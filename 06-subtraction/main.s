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

; to see the value in result, compile with -g flag
; to generate debug information
; nasm -f elf32 -g -o main.o main.s
; then (gdb) print /d (int) result

int 80h
