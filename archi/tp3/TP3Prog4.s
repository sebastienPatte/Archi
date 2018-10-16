	.text
	.globl	fibo1
fibo1:
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	sw	$16,20($sp)
	move	$fp,$sp
	sw	$4,32($fp)
	lw	$2,32($fp)
	nop
	slt	$2,$2,2
	beq	$2,$0,$L2
	nop

	lw	$2,32($fp)
	j	$L3
	nop

$L2:
	lw	$2,32($fp)
	nop
	addiu	$2,$2,-1
	move	$4,$2
	jal	fibo1
	nop

	move	$16,$2
	lw	$2,32($fp)
	nop
	addiu	$2,$2,-2
	move	$4,$2
	jal	fibo1
	nop

	addu	$2,$16,$2
$L3:
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	lw	$16,20($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.globl	main
main:
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	li	$4,8			# 0x8
	jal	fibo1
	nop

	sw	$2,16($fp)
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop