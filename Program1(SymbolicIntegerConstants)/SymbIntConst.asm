;// Symbolic Integer Constants							   (SymbIntConst.asm)
;// Write a prgoram that defines symbolic constants for all the 
;// days of the week. Create an array variable that uses the 
;// symbols as initializers

INCLUDE Irvine32.inc


Monday	  = 1
Tuesday	  = 2
Wednesday	  = 3
Thursday	  = 4
Friday	  = 5
Saturday	  = 6
Sunday	  = 7

;// Data segment
.data
daysArray	  BYTE	Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday

;// Code Segment
.code
main	   PROC
    ;// This part of the program is a bonus. It's to just confirm
    ;// the the values in the array

    ;// Clear Registers
    MOV	  EAX, 0	
    MOV	  EBX, 0
    MOV	  ECX, 0
    MOV	  EDX, 0
    
    ;// Put values of array from dending order from AX to upper half of DX(DH) 
    MOV	  AH, [daysArray]		  
    MOV	  AL, [daysArray + 1]	 ;// AX: | 01 | 02 |
    MOV	  BH, [daysArray + 2]
    MOV	  BL, [daysArray + 3]	 ;// BX: | 03 | 04 |
    MOV	  CH, [daysArray + 4]
    MOV	  CL, [daysArray + 5]	 ;// CX: | 05 | 06 |
    MOV	  DH, [daysArray + 6]	 ;// DX: | 07 | 00 |<-0 from initial zeros
    
    CALL	  DumpRegs			 ;// Display registers

    exit						 

main ENDP
END main
