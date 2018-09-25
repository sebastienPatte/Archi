# TP1-Ex2
	
	.data

	.text
	.globl main
main:
	li $t0, 0x03200027
	li $t1, 0x12345678
	sub $t2, $t0, $t1
	sra $t2, $t2, 31 
	xor $t3, $t0, $t1
	and $t3, $t3, $t2
	xor $t4,$t1, $t3
	jr $ra


