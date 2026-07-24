section .data
msg db "input your guess:", 10, 0
fmt db "%d", 0          ; scanf format string for an integer
pfmt db "you typed in %d", 10, 0
num dd 99
msgWin db "yay! you won!!", 10, 0

section .bss
guess resd 1

section .text
global main

extern printf
extern exit
extern scanf

main:
push msg
call printf

push guess              ; Push address of the variable to store input
push fmt                ; Push address of the format string
call scanf              ; Call C function


mov  eax, [guess]
push eax
push pfmt
call printf

mov eax, [guess]
cmp eax,[num]
je  win
jmp exitProg

win:
push msgWin
call printf


exitProg:
mov  eax, [guess]
push eax
call exit


section .note.GNU-stack
