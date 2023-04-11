; Author: Kassidy Maberry
; Assignment: assembly
; File: area.asm
; Date: 2023/04/24

section .data
    pi dq 3.14              ; represents a float of pi
    radius dd 5            ; the radius of our circle
    msg db 'A circle with a radius %d with area %f', 10, 0   ; the message we will be printing

section .bss
;     result resd 10          ; varaible that will be the result of the area.

section .text
    extern printf

global main

main: 
    push rbp
    mov rbp, rsp
    mov rdi, msg ; Message we are initalizing
    mov rsi, [radius] ; First message we are appending
    mov rax, 0;
    call printf ; calls printf
    mov rsp, rbp 
    pop rbp

    ; successful exist aka return 0
    mov rax, 60
    mov rdi, 0
    syscall

