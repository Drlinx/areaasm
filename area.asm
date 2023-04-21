; Author: Kassidy Maberry
; Assignment: assembly
; File: area.asm
; Date: 2023/04/24

section .data
    dist dq 15.0            ; The side length of the square
    msg db  'A square with a side of %f has an area of %f', 10, 0 ; Message we are printing

section .bss

section .text
    extern printf

global main

main: 

    ; Preparing xmm for printf
    movsd xmm0, [dist] ; sets the first xmm register to dist
    movsd xmm1, [dist] ; sets the second xmm register to dist
    mulsd xmm1, [dist] ; multiplies the second xmm register by dist

    ; Calling printf
    push rbp
    mov rbp, rsp
    mov rax, 2 ; setting up the two xmm registers
    mov rdi, msg ; Sets up the message
    call printf

    ; clears print f
    mov rsp, rbp
    pop rbp


    ; successful exist aka return 0
    mov rax, 60
    mov rdi, 0
    syscall

