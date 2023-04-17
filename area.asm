; Author: Kassidy Maberry
; Assignment: assembly
; File: area.asm
; Date: 2023/04/24

section .data
    dist dd 0xF            ; the result of our circle
    ans dd 0x0
    msg db  'A square with a side of %ld has an area of %ld', 10, 0 ; Message we are printing

section .bss
;     result resd 10          ; varaible that will be the result of the area.

section .text
    extern printf

global main

main: 
    mov eax, [dist] ; intializes eax to 15
    mov ebx, eax    ; intailzes ebx to eax
    mov eax, [dist] ; changes eax to now 15
    mul ebx         ; multiplies eax by ebx

    mov [ans], eax  ; places eax into ans




    push rbp
    mov rbp, rsp
    mov rax, 2 ; setting up the two xmm registers
    mov rdi, msg
    ; mov rdi, msg ; message we are printing
    ;movsd xmm0, [dist] ; element one for the first %d
    ;movsd xmm1, [ans] ; element two for the second %d
    call printf


    ; successful exist aka return 0
    mov rax, 60
    mov rdi, 0
    syscall

