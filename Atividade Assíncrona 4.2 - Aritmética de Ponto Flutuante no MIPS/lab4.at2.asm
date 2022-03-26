.data
Zero.s : .word 0x00000000
PlusInf.s: .word 0x7F800000
MinusInf.s: .word 0xFF800000
PlusNaN.s: .word 0x7F800600
MinusNaN: .word 0xFF800600
MyNum.s: .word 0x41A00000

.text
    
    lwc1 $f1,PlusInf.s #carrega o infinito em f1
    mov.s $f12,$f1
    li $v0,2
    syscall
    
    li $a0, '\n'  #imprime uma quebra de linha
        li $v0, 11
        syscall
    
    lwc1 $f2,MyNum.s #carrega o Mynum em f2
    mov.s $f12,$f2
    li $v0,2
    syscall
    
    li $a0, '\n'  #imprime uma quebra de linha
        li $v0, 11
        syscall
    
    add.s $f4,$f1,$f2  #faz a soma entre eles e imprime
    mov.s $f12,$f4
    li $v0,2
    syscall
    
    li $a0, '\n'  #imprime uma quebra de linha
        li $v0, 11
        syscall
        
        lwc1 $f6,PlusNaN.s  #carregando o valor de Nan
        add.s $f8,$f6,$f2    #somando Nan com 20
        mov.s $f12,$f8
        li $v0,2
        syscall             #imprimindo o resultado