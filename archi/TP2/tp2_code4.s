# TP2 - BubbleSort
	
.data
X:	.byte 5, 1, 4, 2, 8
.text
.globl main

main:
	j deb

	
deb:	xor $t4, $t4, $t4	# swapped=false
	la $t3, X		# initialisation boucle
	addi $t5, $t3, 4
	j bcl
bcl:	
	lb $t1, 0($t3)		#t1 = A[i-1]
	lb $t2, 1($t3)		#t2 = A[i]
	slt $t6, $t2, $t1
	blt $t1, $t2, suite	#pas d'échange à faire
	sb  $t1, 0(t3)	#A[i-1] <-> A[i]
	sb  $t2, 1(t3)	#A[i-1] <-> A[i]
	move $t4, $t6		#swapped=true
suite:	
	addiu $t3, $t1, 1 			#i++
	bne $t3, $t5, bcl	# retour début boucle for
	beq	$t4, $t6, deb		# retour début boucle do-while 
	jr $ra



