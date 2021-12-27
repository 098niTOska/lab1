%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax
    fld DWORD [a]
    fld DWORD [b]
    fld DWORD [c]
    fdiv
    fsub
    fst DWORD [s]
    ret
    
    section .data
    a: dd 0x41980000
    b: dd 0x41A00000
    c: dd 0x41D00000
    s: dd 0x00000000