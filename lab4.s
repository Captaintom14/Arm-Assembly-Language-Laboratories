.syntax unified
.cpu cortex-m4
.thumb

.word 0x20000400
.word 0x800000ed
.space 0xe4

@declaring the data

.data
message: .ascii "juMping JAck flaSh #1"
lastchar: .byte 0


.text
start:

ldr r0, =message @loads the address of the memory
mov r1, #0       @ r1 represents the increment

@ start of the loop
loop:

      ldrb r2,[r0,r1]  @r2 holds the first value of the ascii
      mov r3, r2  @ r3 holds the number of the ascii code
      cmp r3,#0   @compares if the value is null
      beq exit    @ check if array[i] = 0


@start of the first if statement

      cmp r3,#97 @compares array[i] and a (97)
      blt next   @check if array [i] < a (97)


@start of the second if statement

      cmp r2,#127 @ compares array[i] and z
      bgt next     @check if array[i] > z


@when the if statement is cleared, we can now convert it to uppercase

sub r2, r2, #32    -+
strb r2,[r0,r1]       @updates the value content

@adds an increment
next:
     add r1, r1, #1    @i = i + 1
     b loop            @goes back to the loop

exit: b .
