.data

.balign 4
a: .skip 400

.text
.global main
main:
    ldr r1, addr_of_a
    mov r2, #0

loop: 
    cmp r2, #100            /*i<=100     */ 
    beq end 
    add r3, r1, r2, LSL #2  /* r2값에 따라 4번지씩 증가 */

    /* 추가되는 코 드*/
    mov r4, r2, LSL #1      /* r4 = r2 * #2 */
    add r4, r4, r2          /* r4 = r4 + r2 */ 
    add r4, r4, #1

    str r4, [r3]            /* a[i] = i; */
    add r2, r2, #1          /* i++       */
    b loop

end:
    bx lr

addr_of_a: .word a


