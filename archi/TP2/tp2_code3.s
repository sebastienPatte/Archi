# TP2-Code 3
	
.data
X: .word   -1 0 1 2 3 4 5 6 7 8
Y: .word 0 10 9 8 7 6 5 4 3 2
Z: .word 0 0 0 0 0 0 0 0 0 0
.text
.globl main

main:
	la $t0,X
    la $t1,Y
    la $t2,Z
    # TODO !

loop:
    lw $t4, 0($t0) 
    lw $t5, 4($t1)  
    lw $t6, 0($t2)	 

    add $t6, $t4, $t5 # Z[i]=X[i-1]+Y[i]
    addiu $t0, $t0, 4 # X[i]=X[i+1]
    addiu $t1, $t1, 4 # Y[i]=Y[i+1]
    addiu $t2, $t2, 4 # Z[i]=Z[i+1]

    sw $t6, 0($t2)

	addi $t3, $t3, 1


    blt $t3, 10, loop
jr $ra 





