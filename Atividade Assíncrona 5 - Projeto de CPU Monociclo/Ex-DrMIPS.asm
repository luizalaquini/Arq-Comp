#Fibonacci
.data
num: .word 10 # saída = 89
res: .word 0
x: .word 0

.text
#carregando registradores com valores aleatórios
lw $a0, num
li $t0, 1 # addi $t0, $0, 1
li $t1, 1
li $t2, 1
loop:
ble $a0, $t0, end
addi $t0,$t0, 1
addi $14,$0,-2
move $t3,$t2
add $t2,$t2,$t1
move $t1,$t3
b loop # beq $0,$0,loop

end:
addi $t4,$0,111
addi $t5,$0,-220
addi $t6,$0,889

sw $t2, x
