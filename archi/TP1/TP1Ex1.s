# TP1-Ex1
	
	.data

	.text
	.globl main
main:
	li $t0, 0x80000000
	li $t1, 0xFFFFFFFF
	and $t2, $t0, $t1
	or $t3, $t0, $t1
	add $t4,$t2, $t3
	jr $ra



