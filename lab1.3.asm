%include "io.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
    xor eax, eax
    mov ax,  0x13       ; Значение переменной a
    mov bx,  0x14       ; Значение переменной b
    mov cx,  0x1A       ; Значение переменной c
    cmp ax, bx
    jnl 17
    cmp bx, cx
    jnl 15
    mov dx, cx
    jmp 19
    cmp ax, cx
    jnl 20
    mov dx, cx
    jmp 23
    mov dx, ax
    ret
    