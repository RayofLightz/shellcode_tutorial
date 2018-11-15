section .text
    global _start

_start:
    xor eax, eax
    push eax
    push 0x0A646c72
    push 0x6f77206f
    push 0x6c6c6548
    mov bl, 0x1
    mov ecx, esp
    mov dl, 0xe 
    mov al, 0x4
    int 0x80 ; call the syscall
    mov al, 0x1
    int 0x80
