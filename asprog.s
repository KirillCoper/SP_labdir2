.code32
.data

array:

.byte 0b00101110, 0b00111000, 0b11100100, 0b01100010, 0b00110010, 0b00110010, 0b00110010, 0b00000111, 0b00001101, 0b00011111, 0b00111111, 0b01011101

array_end:

.text

.globl  main

main:

        movl    $array, %esi
        movl    $0, %ecx
        subl    $1, %esi
        jmp     ch_bound

cyc_start:
testl $0b00100000, (%esi)
jne not_set
testl $0b00000010, (%esi)
jne not_set
incb %cl

not_set:
jmp ch_bound

ch_bound:
addl    $1, %esi
cmpl    $array_end, %esi
jne     cyc_start
movl    $1, %eax
movl    $0, %ebx
int     $0x80
.size   main, . - main