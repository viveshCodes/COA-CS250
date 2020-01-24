# Problem 10(a) : Fibonacci Series. Input: user provided command line argument, a random positive integer, say n. 
#                 Calculate the nth, and the next number in the Fibonacci sequence using (a) loops
#                 The two outputs should be in registers $v0, and $v1.

# MIPS Assembly Code :
.data
  introText: .asciiz " Enter an integer : \n"
  input: .word 256


.text
.globl main
main:
  # input
  li $v0, 4
  la $a0, introText
  syscall

  
  li $v0, 5
  syscall

  addi $s1, $v0, 0
  

 
  li $s2, 0 
  li $s3, 0 
  li $s4, 1 
  loop: 
    addi $s2, $s2, 1
    add $s5, $s3, $s4 
    addi, $s4, $s3, 0 
    addi, $s3, $s5, 0 
  bne $s2, $s1, loop

  
  
  addi $v0, $s5, 0
  add $v1, $s5,$s4


  li $v0, 10 
  syscall
# -----X-----MIPS Assembly Code finishes-----X-------


# ********************************************* #
# Program by  : Vivesh Yadav
# Roll number :181C0259
# Question    : Question no 10(a) of Assigment A0
# ********************************************** #