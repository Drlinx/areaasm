; Author: Kassidy Maberry
; Assignment: assembly
; File: area.asm
; Date: 2023/04/24

section .data
    dist dq 15.00            ; The side length of the square
    ans dq 0.0              ; The result
    msg db  'A square with a side of %f has an area of %f', 10, 0 ; Message we are printing

section .bss
;     result resd 10          ; varaible that will be the result of the area.

section .text
    extern printf

global main

main: 

    push rbp
    mov rbp, rsp
    mov rax, 2 ; setting up the two xmm registers
    movsd xmm0, [dist] ; element one for the first %d
    movsd xmm2, [dist]
    mulsd xmm2, [dist]
    movsd [ans], xmm2
    movsd xmm1, [ans] ; element two for the second %d
    mov rdi, msg
    call printf

    mov rsp, rbp
    pop rbp


    ; successful exist aka return 0
    mov rax, 60
    mov rdi, 0
    syscall

