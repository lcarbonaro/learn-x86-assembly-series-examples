section .text
global _start

_start:
mov eax, 0b100     ; 4 in decimal
mov ebx, 0b11      ; 3 in decimal
add eax, ebx     

mov eax, 0b111     ; 7 in decimal
mov ebx, 0b101     ; 5 in decimal
sub eax, ebx     

int 80h