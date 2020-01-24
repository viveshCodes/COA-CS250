# Problem 3 : Print “Hello World” on the output screen.

# MIPS Assembly Code :
.data
	message: .asciiz "Hello World\n"

.text
.globl main

main:
	li $v0, 4
	la $a0, message
	syscall
# -----X-----MIPS Assembly Code finishes-----X-------


# ********************************************* #
# Program by  : Vivesh Yadav
# Roll number :181C0259
# Question    : Question no 3 of Assigment A0
# ********************************************** #