# Problem 9 :Write a program in MIPS assembly language to convert an ASCII number string containing positive and negative integer decimal strings,
#            to an integer. Your program should expect register $a0 to hold the address of a null-terminated string containing some combination of
#            the digits 0 through 9. Your program should compute the integer value equivalent to this string of digits, then place the number in
#            register $v0 . If a non-digit character appears anywhere in the string, your program should stop with the value -1 in register $v0 .
#            For example, if register $a0 points to a sequence of three bytes 50ten, 52ten, 0ten (the null-terminated string “24”), then when the
#            program stops, register $v0 should contain the value 24ten.

# MIPS Assembly Code :

	.data
input:	.asciiz "651283"

	.text
	.globl main
main:
	
	la	$a0, input
	
	li 	$t6, 0	
	li	$v0, 0	
	li	$t0, 0	
	li 	$t4, 0 	
	li	$t2, 0	
	li	$t5, 10	
	li	$s1,'0'
	li 	$s2,'9'

	loop:
		add	$t2, $a0, $t0
		lb	$t1, 0($t2)	
		lb	$t3, 1($t2)
		
		beqz $t1, exit
		
		# check if both are digits or not. If not then error (calling error)
		bltu $t1, $s1, error
		bltu $s2, $t1, error
		bltu $t3, $s1, error
		bltu $s2, $t3, error
		
		mul	$v0, $v0, $t5
		# for integer
		addu $t1, $t1, -48
		#for integer
		addu $t3, $t3, -48
		# MSB * 10 to make 2 digit number
		mul	$t1, $t1, $t5
		add	$t1, $t1, $t3
		addi $t1, $t1, -48
		
		# store output in v0
		add	$v0, $t1, $v0

		addiu  $t0, $t0, 2
		addiu $t4, $t4 ,1
		j loop
	
	error:
		addi $v0,$t6,-1
				
	exit:
		.end
# -----X-----MIPS Assembly Code finishes-----X-------


# ********************************************* #
# Program by  : Vivesh Yadav
# Roll number :181C0259
# Question    : Question no 9 of Assigment A0
# ********************************************** #