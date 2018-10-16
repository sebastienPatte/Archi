
	.text
	.globl	bar
bar:
	addiu	$sp,$sp,-16
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	sw	$5,12($fp)
	lw	$2,8($fp)
	nop
	lw	$3,0($2)
	lw	$2,12($fp)
	nop
	lw	$2,0($2)
	nop
	addu	$2,$3,$2
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,16
	j	$31
	nop

	.globl main
main:
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	li	$2,2			# 0x2
	sw	$2,16($fp)
	sw	$0,20($fp)
	addiu	$2,$fp,20
	addiu	$3,$fp,16
	move	$4,$3
	move	$5,$2
	jal	bar
	nop

	sw	$2,20($fp)
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

