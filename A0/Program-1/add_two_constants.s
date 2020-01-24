# Problem 1 :Load two 32b constants on to $t0 and $t1. Add them and store the result in $t2.

# MIPS Assembly Code :
.data
	number1: .word 900000000   # number1 = 90000000
	number2: .word 700000000   # number2 = 70000000

.text
.globl main

main:
	lw $t0, number1   	# load number1 to to =>  numt0 = number1
	lw $t1, number2		# load number2 to t1  => t1 = number2

	add $t2, $t0, $t1 	 # store result in t2 => t2 = t0 + t1
	
	# Displaying our result
	li $v0, 1
	add $a0, $zero, $t2
	syscall
# -----X-----MIPS Assembly Code finishes-----X-------


# ********************************************* #
# Program by  : Vivesh Yadav
# Roll number :181C0259
# Question    : Question no 1 of Assigment A0
# ********************************************** #