section .data
name db "Les", 10, 0


section .text
global main

extern greet
extern exit

main:
push name
call greet
push 0
call exit


section .note.GNU-stack


