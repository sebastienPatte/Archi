# TP2-Code 3
	
.data
X:	.byte 9 7 3 1 8
.text
.globl main

main:
deb:
	xor $t4, $t4, $t4	# swapped=false
	la $t3, X		# initialisation boucle
	addi $t5, $t3, 4
	bcl:	
		lb $t1, 0($t3)		#t1 = A[i-1]
		lb $t2, 1($t3)		#t2 = A[i]
		slt $t6, $t2, $t1
		blt $t1, $t2, suite
		sb  $t1, 1($t3)	#A[i-1] <-> A[i]
		sb  $t2, 0($t3)	#A[i-1] <-> A[i]
		move $t4, $t6		#swapped=true
		suite:	
			addiu $t3, $t3, 1 			#i++
	bne $t3, $t5, bcl
bne	$t4, $t6, deb
jr $ra 





