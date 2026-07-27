section .data
name db "Les", 10, 0

section .text
global main

extern multiply, greet, printf
extern exit

main:
push name
call greet    ; this custom C function returns a string
              ; the address of the returned string is then found in EAX register
              
push eax      
call printf

push 20       
push 3
call multiply ; this custom C function returns a number 
              ; the actual value returned is then found in EAX register

push eax      
call exit

section .note.GNU-stack

