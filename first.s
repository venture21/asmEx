/* first.s */
/* This is a comment */

.global main   /* 'main' is our entry point and  must be global */

main:
    mov r0, #22   /* Put a 2 ainside the register r0 */
        bx  lr   /* return from main : r0 */
