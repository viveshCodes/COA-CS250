# Problem 4:Initialize a contiguous chunk of memory to contain 10 two digit decimal numbers.
#            Your program should calculate the sum of these numbers and put the result into $v0.

# MIPS Assembly Code :
.data
    # Let's create an array of 10 two digit decimal number. array =[10, 20, 30, 40, 50, 60, 70, 80, 90, 95]
array: .word 10, 77, 30, 40, 88, 60 ,99, 80, 91, 95  
message: .asciiz "Result: "

.text
.globl main

# t0=counter
# t1=sum
# const t2=10 [to compare the counter]
# t3 = address of array elements


main:
	addi $t0, $0, 0            # initialize i=0
	addi $t1, $0, 0            # initialize sum=0
	addi $t2, $0, 10           # initialize t2=10
	la $t3, array              # load address of array

# Loop will iterate
loop:
	beq $t0, $t2, end     	   # if(counter==10) exit else continue
	lw $t4, 0($t3)         	   # t4=t3[counter]
	add $t1, $t1, $t4          # sum+=t4
	add $t0, $t0, 1        	   # counter++
	add $t3, $t3, 4        	   # t3+=(t3+4) point to next element
	j loop
    
end:
	addi $v0, $0, 4   
	la $a0, message
	syscall

	addi $v0, $0, 1    
	add $a0, $t1, $0
	syscall
# -----X-----MIPS Assembly Code finishes-----X-------


# ********************************************* #
# Program by  : Vivesh Yadav
# Roll number :181C0259
# Question    : Question no 4 of Assigment A0
# ********************************************** #