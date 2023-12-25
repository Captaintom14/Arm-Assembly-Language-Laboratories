.syntax unified
.cpu cortex-m4
.thumb

.word 0x20000400
.word 0x800000ed
.space 0xe4


.data
array: .byte 3,2,4,1,5,6
@ 3 rows and 2 columns
@       array = 3 2
@               4 1
@               5 6

.text
start:

ldr r0, =array @loads the adress of the 2d array
mov r1, #0    @r1 will hold the row [i] index
mov r2, #1     @r2 will hold the column [j] index which is 2

mov r7, #2     @r7 represents the number of columns which is 2

mov r8, #0
mov r9,  #0

mov r10, #2
mov r11, #1
@inside the formula a[i][j] : a + [((i*number of columns) +j))

mul r3, r1, r7  @ r3 = i*number of columns (r6)
add r4, r3, r2 @ r3 = r3 + j (r2)
ldrb r5, [r0,r4] @ r5 loads the value of the result



mul r3, r8, r7  @ r3 = i*number of columns (r6)
add r4, r3, r9 @ r3 = r3 + j (r2)
ldrb r6,[r0,r4]

mul r3, r10, r7  @ r3 = i*number of columns (r6)
add r4, r3, r11 @ r3 = r3 + j (r2)
ldrb r12,[r0,r4]

stop : b stop
.end
