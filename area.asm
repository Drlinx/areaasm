; Author: Kassidy Maberry
; Assignment: assembly
; File: area.asm
; Date: 2023/04/24

section .data
    dist dd 15            ; the result of our circle
    msg db  'A square with a side of %d has an area of %d', 10, 0 ; Message we are printing

section .bss
;     result resd 10          ; varaible that will be the result of the area.

section .text
    extern printf

global main

main: 

    mul ah, [result]

    push rbp
    mov rbp, rsp
    mov rdi, msg ; Message we are initalizing
    mov rsi, [result] ; First message we are appending
    mov rax, 0;
    call printf ; calls printf
    mov rsp, rbp 
    pop rbp

    ; successful exist aka return 0
    mov rax, 60
    mov rdi, 0
    syscall

