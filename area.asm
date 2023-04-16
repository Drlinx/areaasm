; Author: Kassidy Maberry
; Assignment: assembly
; File: area.asm
; Date: 2023/04/24

section .data
    dist dd 0xF            ; the result of our circle
    ans dd 0x0
    msg db  'A square with a side of %d has an area of %d', 10, 0 ; Message we are printing

section .bss
;     result resd 10          ; varaible that will be the result of the area.

section .text
    extern printf

global main

main: 
    mov eax, [dist]
    mov ebx, eax
    mov eax, [dist]
    mul ebx

    mov [ans], eax




    push rbp
    mov rbp, rsp
    mov rax, 2 ; setting up the two xmm registers
    ; mov rdi, msg ; message we are printing
    movsd rdi, msg
    movsd xmm0, [dist]
    movsd xmm1, [ans]
    call printf


    ; successful exist aka return 0
    mov rax, 60
    mov rdi, 0
    syscall

