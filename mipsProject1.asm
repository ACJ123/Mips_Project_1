.data
start: .word 'A'
newLine: .asciiz "/n"
curr: .word '@'
comma: .asciiz ","

.text
main:
	li $v0,4
	la $a0, curr
	syscall
	
	addi$s0, $zero, 0
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
	
	
	
	
	
	