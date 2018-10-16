	.text
	.globl	min
min:
    # On allout de l'espace en haut de la pile
	addiu	$sp,$sp,-8

	# Récupération des paramètres
	REMPLIR
	
	# fonction min()
	REMPLIR

	# On place la valeur de retour dans le registre correspondant
	REMPLIR

	# On restaure la pile
	REMPLIR

	# Fin de min
	jr $ra


	.globl	main
main:
	# On décale $sp pour remplir la pile ensuite
	addiu $sp,$sp,-16
	REMPLIR # sauvegarde $ra

	# int i ...
	REMPLIR

	# int j ...
	REMPLIR

	# Appel de min: 
    # 1) récupération des valeurs dans les registres pour le passage des arguments
    # 2) récupération de la valeur de retour et enregistrement sur la pile
	REMPLIR

	# MAJ des variables
	REMPLIR

	# On restaure l'état des registres utiles et de la pile
	REMPLIR

	# fin de main
	jr $ra


