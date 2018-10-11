# TP2-Code 1
	
.data
X0:	.word 0x68637241
X1:	.word 0x63657469
X2:	.word 0x65727574
Y:	.word 0x23242526
T:	.asciiz "Endianite QtSpim"

.text
.globl main

main:
	la $t0, X0
	lw $t1, 0($t0)
	lb $t2, 1($t0)
	lw $t1, 1($t0)
	jr $ra


