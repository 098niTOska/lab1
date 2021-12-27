%include "io.inc"

section .text
global CMAIN
CMAIN:   
mov ebp, esp        ; for correct debugging
mov cl,  0x13       ; Значение переменной a
mov ax,  0x14       ; Значение переменной b
mov bl,  0x1A       ; Значение переменной c
div bl
sub cl, al
PRINT_STRING 'AL contain: '
PRINT_UDEC 4, cl
ret
 