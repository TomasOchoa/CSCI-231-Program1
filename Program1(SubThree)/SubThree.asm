;// Subtracting three integers		    (SubThree.asm)

INCLUDE Irvine32.inc

;// Data segment
.data
Rval		  SWORD ?
Int1		  SWORD	    26
Int2		  SWORD	    30
Int3		  SWORD	    40

;// Code Segment
.code
main	   PROC
;// AX register is lower half or EAX register
;// Therfore clear out the upper half with zeros

MOV	 EAX, 0				;// EAX = 0000 - 0000 - 0000 - 0000
						;//				|    AX     |
						;//				|  AH | AL  |
;// Expression: Rval = (Int1 - Int2 - Int3)
MOV	 AX, Int1				;// AX = 26
SUB	 AX, Int2				;// AX = (26-30) = -4
SUB	 AX, Int3				;// AX = (-4 - 40) = -44
MOV	 Rval, AX				;// Rval = -44

						;// This means EAX should look like |00|00|FF|D4|
						;//							    |AH|AL|
						;//							    | AX  |
						;//						   |    EAX    |

CALL	 DumpRegs				;// Display registers

exit

main ENDP
END main
