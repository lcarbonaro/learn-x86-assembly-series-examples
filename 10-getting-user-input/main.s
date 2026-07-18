section .data       ; declare initialised constants

section .bss        ; declare un-initialised data
name resb 1024      ; reserve bytes

section .text
global _start

_start:
mov eax, 3          ; sys_read
mov ebx, 0          ; input device i.e. keyboard
mov ecx, name       ; pointer to input buffer variable
mov edx, 1024       ; length 
int 80h

; inspect in debugger with: (gdb) x/s &name

;exit
mov eax, 1          ; sys_exit
mov ebx, 0          ; exit code
int 80h

; after program is run, check return code with: echo $?