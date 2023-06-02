
.global main 
.type main, @function

.equ     B0_RESET_VALUE, 0
.equ     B1_RESET_VALUE, 1
.equ     B2_RESET_VALUE, 2
.equ     B3_RESET_VALUE, 4
.equ     B4_RESET_VALUE, 8
.equ     B5_RESET_VALUE, 16
.equ     B6_RESET_VALUE, 32
.equ     B7_RESET_VALUE, 64

.equ     B0_DEC_VALUE, -1
.equ     B1_DEC_VALUE, -1
.equ     B2_DEC_VALUE, -1
.equ     B3_DEC_VALUE, -1
.equ     B4_DEC_VALUE, -1
.equ     B5_DEC_VALUE, -1
.equ     B6_DEC_VALUE, -1
.equ     B7_DEC_VALUE, -1

.text
main: 
init:   addi    a0, zero, 0
        addi    a1, zero, 0
        addi    a2, zero, 0
        addi    a3, zero, 0
        addi    a4, zero, 0
        addi    a5, zero, 0
        addi    a6, zero, 0
        addi    a7, zero, 0
        j       B0

B0_INIT:
        addi    a0, zero, B0_RESET_VALUE
        j       B1
B0:
        beq     a0, zero, B0_INIT
        addi    a0, zero, B0_DEC_VALUE
        j       B1

B1_INIT:
        addi    a1, zero, B1_RESET_VALUE
        j       B2
B1:
        beq     a1, zero, B1_INIT
        addi    a1, zero, B1_DEC_VALUE
        j       B2

B2_INIT:
        addi    a2, zero, B2_RESET_VALUE
        j       B3
B2:
        beq     a2, zero, B2_INIT
        addi    a2, zero, B2_DEC_VALUE
        j       B3

B3_INIT:
        addi    a3, zero, B3_RESET_VALUE
        j       B4
B3:
        beq     a3, zero, B3_INIT
        addi    a3, zero, B3_DEC_VALUE
        j       B4

B4_INIT:
        addi    a4, zero, B4_RESET_VALUE
        j       B5
B4:
        beq     a4, zero, B4_INIT
        addi    a4, zero, B4_DEC_VALUE
        j       B5

B5_INIT:
        addi    a5, zero, B5_RESET_VALUE
        j       B6
B5:
        beq     a5, zero, B5_INIT
        addi    a5, zero, B5_DEC_VALUE
        j       B6

B6_INIT:
        addi    a6, zero, B6_RESET_VALUE
        j       B7
B6:
        beq     a6, zero, B6_INIT
        addi    a6, zero, B6_DEC_VALUE
        j       B7

B7_I:
        addi    a7, zero, B7_RESET_VALUE
        j       B0
B7:
        beq     a7, zero, B7_INIT
        addi    a7, zero, B7_DEC_VALUE
        j       B0
