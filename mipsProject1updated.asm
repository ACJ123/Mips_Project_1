.data
begin: .word 'J'
newLine: .asciiz "/n"
curr: .word '@'
comma: .asciiz ","

.text
main:
	li $v0,4
	la $a0, curr
	syscall 
	
	addi $s0, $zero, 0
	li $v0, 1
	move $a0, $s0
	syscall
	
	addi $s0, $s0, 2
	li $v0, 1
	move $a0, $s0
	syscall
	
	addi $s0, $s0, 6
	li $v0, 1
	move $a0, $s0
	syscall
	
	addi $s0, $s0, -2
	li $v0, 1
	move $a0, $s0
	syscall
	
	addi $s0, $s0, -6
	li $v0, 1
	move $a0, $s0
	syscall
	
	addi $s0, $s0, 6
	li $v0, 1
	move $a0, $s0
	syscall
	
	addi $s0, $s0, -5
	li $v0, 1
	move $a0, $s0
	syscall 
	
	addi $s0, $s0, 3
	li $v0, 1
	move $a0, $s0
	syscall
	
	addi $a0, $0, 0xA
        addi $v0, $0, 0xB 
        syscall
	
	#Name#
	#J#
	li $v0, 4
        la $a0, begin
        syscall
	
	#o#
        lw $s1, begin #load the begin var as a word (4bytes)
        addi $s1, $s1, 37 #load the addition in to a temp register
        sw $s1, curr #save the value in $t0 into count
        li $v0, 4 #prepare to load a string
        la $a0, curr #load the addy of curr into $a0 to print out
        syscall
	
	#n#
        lw $s1, curr
        addi $s1, $s1, -1
        sw $s1, curr 
        li $v0, 4 
        la $a0, curr 
        syscall
        
        #e#
        lw $s1, curr
        addi $s1, $s1, -9
        sw $s1, curr 
        li $v0, 4 
        la $a0, curr 
        syscall
	
	#s#
        lw $s1, curr
        addi $s1, $s1, 14
        sw $s1, curr 
        li $v0, 4 
        la $a0, curr 
        syscall
        
        #,#
        lw $s1, curr
        addi $s1, $s1, -71
        sw $s1, curr 
        li $v0, 4 
        la $a0, curr 
        syscall
        
        # #
        lw $s1, curr
        addi $s1, $s1, -12
        sw $s1, curr 
        li $v0, 4 
        la $a0, curr 
        syscall
	
	#A#
        lw $s1, curr
        addi $s1, $s1, 33
        sw $s1, curr 
        li $v0, 4 
        la $a0, curr 
        syscall
        
        #m#
        lw $s1, curr
        addi $s1, $s1, 44
        sw $s1, curr 
        li $v0, 4 
        la $a0, curr 
        syscall
        
        #a#
        lw $s1, curr
        addi $s1, $s1, -12
        sw $s1, curr 
        li $v0, 4 
        la $a0, curr 
        syscall
        
        #r#
        lw $s1, curr
        addi $s1, $s1, 17
        sw $s1, curr 
        li $v0, 4 
        la $a0, curr 
        syscall
        
        #i#
        lw $s1, curr
        addi $s1, $s1, -9
        sw $s1, curr 
        li $v0, 4 
        la $a0, curr 
        syscall
	
	li $v0, 10
   	syscall
   	
   	addi $a0, $0, 0xA
        addi $v0, $0, 0xB 
        syscall