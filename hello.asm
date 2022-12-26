; nasm -f elf64 hello.asm
; ld -s -o hello hello.o

section .data
    msg db 'Hello World!', 0xA, 0xD
    tam equ $- msg

section .text

global _start

_start:
    mov EAX, 0x4
    mov EBX, 0x1
    mov ECX, msg
    mov EDX, tam 
    int 0x80

    mov EAX, 0x1 ; 
    mov EBX, 0x0 ; 
    int 0x80section .data

