# Problem 5 : Write a program to reverse a string (choose your favorite string as a global parameter).

# MIPS Assembly Code :
.data
OriginalString: .asciiz "viveshCodes will be reversed"
newline: .asciiz "\n" 

.text
.globl main

main:

	# Display Original String
	li $v0, 4
	la $a0, OriginalString       
	syscall


	# Display New Line
	li $v0, 4
	la $a0, newline
	syscall


	# To get length of string
	li $t2, 0  	# Initialize counter=0
	strlen:                
		lb $t0, OriginalString($t2) 
		add $t2, $t2, 1
		bne $t0, $zero, strlen


	# Print reversed String
	li $v0, 11         
	loop:
		sub     $t2, $t2, 1     
		la      $t0, OriginalString($t2)
		lb      $a0, ($t0)
		syscall

	bnez    $t2, loop
	li      $v0, 10            
	syscall
# -----X-----MIPS Assembly Code finishes-----X-------


# ********************************************* #
# Program by  : Vivesh Yadav
# Roll number :181C0259
# Question    : Question no 5 of Assigment A0
# ********************************************** #