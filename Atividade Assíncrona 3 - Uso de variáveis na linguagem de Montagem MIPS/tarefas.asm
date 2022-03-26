.data
var1: .word 'u'
var2: .word 'f'
var3: .word 'e'
var4: .word 's'

primeiro: .byte 'L'
ultimo: .byte 'L'

.text
lw $t0, var1 #salva o valor de var1 em $t0
lw $t1, var4 #salva o valor de var4 em $t1
sw $t1, var1 #copia o valor de $t1 para var1
sw $t0, var4 #copia o valor de $t0 para var4

lw $t0, var2 #salva o valor de var2 em $t0
lw $t1, var3 #salva o valor de var3 em $t1
sw $t1, var2 #copia o valor de $t1 para var2
sw $t0, var3 #copia o valor de $t0 para var3

