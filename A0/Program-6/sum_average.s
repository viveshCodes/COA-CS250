# Problem 6 : Implement a function that calculates the sum of the elements of the array. 
#   The function accepts the length of the array and the address of the first element of the array. 
#   The function returns the sum to the caller. The main procedure calculates the average of the elements of the array. 
#   The main procedure uses the mentioned the function. Use the MIPS compiler subroutine conventions for this code.

# MIPS Assembly Code :
.data

array: .word 5, 60, 67, 11, 22, 55, 44, 99, 66, 77
sum: .word 0
messageforSum: .asciiz "Sum: "
messageforAverage: .asciiz "Average: "
newline: .asciiz "\n" 

.text
.globl main

main:
    li $a0, 10	    # Stored in $a0 to pass in function
    la $a1, array   # Stored in $a1 to pass in function
    jal sumofArray  # Jump to function
    sw $v0, sum

   # Show message for Sum
    la $a0, messageforSum
    li $v0, 4
    syscall

   # Show the value of Sum
    lw $a0, sum
    li $v0, 1
    syscall
   
   # Calculate the average 
    li $t0, 10
    lw $t1, sum
    div $t1, $t1, $t0

   # Give a new Line
    la $a0, newline
    li $v0, 4
    syscall

   # Show message for Average
    la $a0, messageforAverage
    li $v0, 4
    syscall
    
   # Show value of average
    add $a0, $0, $t1
    li $v0, 1
    syscall

    li $v0 10
    syscall


sumofArray:
    li $t0 0 
    li $v0 0 

loop:
    lw $t1, 0($a1)
    add $v0, $v0, $t1
    addi $t0, 1
    addi $a1, 4
    blt $t0, $a0, loop
    
    jr $ra
# -----X-----MIPS Assembly Code finishes-----X-------


# ********************************************* #
# Program by  : Vivesh Yadav
# Roll number :181C0259
# Question    : Question no 6 of Assigment A0
# ********************************************** #