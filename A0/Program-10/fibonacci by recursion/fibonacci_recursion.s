# Problem 10(b) : Fibonacci Series. Input: user provided command line argument, a random positive integer, say n. 
#                 Calculate the nth, and the next number in the Fibonacci sequence using (b) recursion. 
#                  The two outputs should be in registers $v0, and $v1.

# MIPS Assembly Code :
   .data
msg_ask:    .asciiz     "Enter an integer n :  "
msg_fibo:   .asciiz     "Fibonacci of n is : "
msg_nl:     .asciiz     "\n"
    .text

main:
    
    la      $a0,msg_ask
    li      $v0,4
    syscall

    
    li      $v0,5
    syscall
    move    $a0,$v0
    bltz    $a0,main_exit

    jal     fibo

    move    $t2,$v0                 # save the result
    add    $t1,$t2,$t0		#fib of n+1
    move    $v1,$t1		#fib of n in 
   

    main_exit:
    li      $v0,10
    syscall


fibo:
   
    bgt     $a0,1,fibo_full         
    move    $v0,$a0                 
    jr      $ra                     

  
fibo_full:
 
    subu    $sp,$sp,12              
    sw      $ra,4($sp)
    sw      $a0,8($sp)

    addi    $a0,$a0,-1               # call for fibo(n-1)
    jal     fibo                    # recursive
    sw      $v0,0($sp)              # save result

    addi    $a0,$a0,-1               # call for fibo(n-2)
    jal     fibo                    # recursive

    lw      $t0,0($sp)              # restore fibo(n-1) from our stack frame
    add     $v0,$t0,$v0             # result is: fibo(n-1) + fibo(n-2)

    # restore from stack frame
    lw      $ra,4($sp)
    lw      $a0,8($sp)
    addu    $sp,$sp,12

    jr      $ra 
# -----X-----MIPS Assembly Code finishes-----X-------


# ********************************************* #
# Program by  : Vivesh Yadav
# Roll number :181C0259
# Question    : Question no 10(b) of Assigment A0
# ********************************************** #