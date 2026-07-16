section .data
num1 dd 15     ; dd (doubleword) for 32-bit register
num2 dd 2

section .text
global _start

_start:
mov eax, 14    ; the dividend must be in register eax
mov ebx, 3     ; the divisor is in any other general purpose register
mov edx, 0     ; good practice to clear edx (remainder) register ahead of operation 
div ebx        ; answer in eax = eax / ebx with remainder in edx, even if remainder is zero

mov eax, [num1]   ; square brackets to get value at that address, not address itself 
mov ebx, [num2] 
mov edx, 0     
div ebx        

; note: 
; DIV is used for dividing unsigned (positive) numbers
; IDIV is used for signed numbers


int 80h

