.data
a: .word 0
b: .word 0

.text
li $v0, 5 #load integer - system call for read_int (a)
syscall
move $t0, $v0 #armazena o conteúdo de $vo em $t0
sw $t0, a #store word - a recebe o conteúdo de $t0

li $v0, 5 #load integer - system call for read_int (b)
syscall
move $t1, $v0 #armazena o conteúdo de $vo em $t1
sw $t1, b #store word - b recebe o conteúdo de $t1

add $t2, $t0, $t1 #armazena em $t2 a soma do conteúdo de $t0 e $t1
move $a0, $t2 #armazena o conteúdo de $t2 em $a0 
li $v0, 1 #load integer - system call for print_int
syscall
