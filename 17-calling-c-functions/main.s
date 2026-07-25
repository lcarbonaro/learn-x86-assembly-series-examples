section .data
msg db "Hello World!!", 10, 0

section .text
extern printf    ; printf() C function
extern exit      ; exit() C function

global main      ; must be main (not _start) when calling C functions

main:
push msg         ; push address of msg variable onto stack
    
                    
call printf      ; will get msg via memeory address on top of the stack
                 ; and calls the built-in printf() C function

push 0           ; push return code of 0 onto stack
call exit        ; and calls the built-in exit() C function


section .note.GNU-stack  ; to clear linker warning


; compile with:
;   nasm -f elf32 -o main.o main.s
; link with:
;   gcc -no-pie -m32 -o main main.o

; note: must have pre-installed
; gcc-multilib
; g++-multilib