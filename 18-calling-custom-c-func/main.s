section .data
    name db "Les", 10, 0


section .text
    global main     ; main (not _start) when calling C functions

    extern greet   ; custom C function in main.c
    extern exit    ; built-in C function

main:
    push name       ; push address of name variable onto stack
    call greet      ; will grab the name from the top of the stack
                    ; and calls the custom C function greet()

    push 0          ; push exit code onto stack
    call exit       ; call the built-in C exit() function


section .note.GNU-stack  ; deals with linker warning from gcc

; compile with:
;   nasm -f elf32 -o main.o main.s
; link with:
;   gcc -no-pie -m32 -o main main.o main.c

; note: must have pre-installed
; gcc-multilib
; g++-multilib

