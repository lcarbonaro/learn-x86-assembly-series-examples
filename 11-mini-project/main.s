; mini-project that:
; - shows a prompt
; - takes user input
; - displays greeting and the input value
;

section .data
prompt      db  "Enter you name: ", 0
promptLen   equ $-prompt
greeting    db  "Hello ", 0
greetingLen equ $-greeting

section .bss
name resb 1024

section .text
global _start

_start:

; show prompt
mov eax, 4   ; sys_write
mov ebx, 1   ; standard output device - terminal
mov ecx, prompt
mov edx, promptLen
int 80h

; get name input from user
mov eax, 3   ; sys_read
mov ebx, 0   ; standard input device - keyboard
mov ecx, name
mov edx, 1024
int 80h

; display greeting and name
mov eax, 4        ; sys_write
mov ebx, 1        ; standard output device - terminal
mov ecx, greeting
mov edx, greetingLen
int 80h
mov eax, 4        ; sys_write
mov ebx, 1        ; standard output device - terminal
mov ecx, name
mov edx, 1024
int 80h


_exit:
mov eax, 1   ; sys_exit
mov ebx, 0   ; return status code
int 80h



