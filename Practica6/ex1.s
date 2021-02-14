 #include <iregdef.h>
.set noreorder
.text
.globl start
.ent start
start: jal wait # Wait for button click
	nop
	lui s0, 0xbf90 #Load switch port address
	lb s1, 0x0(s0) #Read first number from switches
	nop
	jal wait #Wait for button click
	nop
	lb s2, 0x0(s0) #Read second number from switches
	nop
	addu s3, s1, s2 #Perform an arithmetic operation
	sb s3, 0x0(s0) #Write the result to LEDs
	b start #Repeat all over again
	nop
	
	###Add code for wait subroutine here! ###
wait: lui s3, 0xbfa0 #Load interrupt port address
read: lb s4, 0x0(s3) #Read K2 #Buscamos que sea 1
	  nop
	  andi s4, s4, 0x01 #Filtro para tener el primer bit
	  bgtz s4, loop #Salta a loop si s4 es mayor a 0
	  nop
	  b read
	  nop	
loop: lb s4, 0x0(s3) #Read K2 #Buscamos que sea 0
	  nop
	  andi s4, s4, 0x01 #Filtro para tener el primer bit
	  blez s4, fin #Salta a fin si s4 es menor o igual a 0
	  nop
	  b loop
	  nop
fin:  jr ra
.end start