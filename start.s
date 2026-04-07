/* compile with gcc */
        .data
strp:   .asciz  "The numbers are %d %d %d\n"
        .align
a:      .word   1
b:      .word   2
c:      .word   3
da:     .word   6
db:     .word   0
dc:     .word   0

        .text
        .globl main
main:   stmfd   sp!, {lr}


        ldmfd   sp!, {lr}
        mov     r0, #0
        .end
