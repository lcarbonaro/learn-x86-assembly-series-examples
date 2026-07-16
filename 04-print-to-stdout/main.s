; used for declaring data constants
; initialised variables that do not 
; change during program execution
section .data    
name db 'John Smith', 10  ; to add newline to string, can also be 0xA
nameLen equ $-name        ; auto calculates length of name


; used for source code instructions
section .text    
global _start

_start:
mov eax, 4        ; sys_write
mov ebx, 1        ; stdout device i.e. terminal
mov ecx, name     ; pointer to the variable to print
mov edx, nameLen  ; length of the variable
int 80h           ; returns control back to the linux kernel

; exit program gracefully
mov eax, 1   ; sys_exit
mov ebx, 0   ; return an exit code of 0
int 80h      ; returns control back to the linux kernel
