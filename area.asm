; Author: Kassidy Maberry
; Assignment: assembly
; File: area.asm
; Date: 2023/04/24

section .data
    pi dq 3.14              ; represents a float of pi
    radius dd 15            ; the radius of our circle
    msg db "----------" 10, 0   ; the message we will be printing

section .bss
    result resd 10          ; varaible that will be the result of the area.

main: 
    mul rax, radius         ; multiplies rax by radius 
    mul rax, radius         ; multiplies rax by radius to get r^2
    mul rax, pi             ; multiplies rax by pi


    push rbp
    mov rbp, rsp
    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, 10
    syscall
