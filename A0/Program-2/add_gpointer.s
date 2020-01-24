# Problem 2 :Load a 32b constant in the memory location pointed to by the global pointer. 
#            Load another 32b constant in the first memory location of the data segment. 
#            Add them both and save the sum in the 100th word of the data segment.

# MIPS Assembly Code :
.data
	number1: .word 10
	number2: .word 20

.text
.globl main

main:
    lui $t0, 4096
    lw $t1, number1		# t1=number1
    lw $t2, number2		# t2=number2
    sw $t1, 0($t0)	
    sw $t2, 0($gp)
    add $t3, $t1 $t2	# t3 = t1 + t2
    sw $t3, 396($t0) 	# 396 as each word stores 4 bytes

# To display the result
	li $v0, 4
	add $a0, $zero, $t3
	syscall  
# -----X-----MIPS Assembly Code finishes-----X-------


# ********************************************* #
# Program by  : Vivesh Yadav
# Roll number :181C0259
# Question    : Question no 2 of Assigment A0
# ********************************************** #