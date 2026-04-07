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

        /* copy the contents at a to da, b to db, c to dc */
        ldr     r0, =a
        ldr     r0, [r0]
        ldr     r5, =da
        str     r0, [r5]

        ldr     r1, =b
        ldr     r1, [r1]
        ldr     r6, =db
        str     r1, [r6]

        ldr     r2, =c
        ldr     r2, [r2]
        ldr     r6, =dc
        str     r2, [r6]

        @ Now marshal the arguments to print out contents stored at da, db, dc
        ldr     r0, =strp
        ldr     r1, =da
        ldr     r1, [r1]
        ldr     r2, =db
        ldr     r2, [r2]
        ldr     r3, =dc
        ldr     r3, [r3]
        bl      printf


        ldmfd   sp!, {lr}
        mov     r0, #0
        .end
