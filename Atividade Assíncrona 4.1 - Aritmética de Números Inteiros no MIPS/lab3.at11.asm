.data
a: .word 0
b: .word 0
Space: .asciiz " "  

.text
li $v0, 5 #load integer - system call for read_int (a)
syscall
move $t0, $v0 #armazena o conte?do de $vo em $t0
sw $t0, a #store word - a recebe o conte?do de $t0

li $v0, 5 #load integer - system call for read_int (b)
syscall
move $t1, $v0 #armazena o conte?do de $vo em $t1
sw $t1, b #store word - b recebe o conte?do de $t1

divu $t2, $t0, $t1 #armazena em $t2 o QUOCIENTE da DIVIS?O SEM SINAL do conte?do de $t0 e $t1
move $a0, $t2 #armazena o conte?do de $t2 em $a0 
li $v0, 1 #load integer - system call for print_int (IMPRIME)
syscall

li $v0, 4 #load integer - system call for print_string
la $a0, Space #indica o endere?o da string a ser impressa
syscall

remu $t2, $t0, $t1 #armazena em $t2 o RESTO da DIVIS?O SEM SINAL do conte?do de $t0 e $t1
move $a0, $t2 #armazena o conte?do de $t2 em $a0 
li $v0, 1 #load integer - system call for print_int (IMPRIME)
syscall