INCLUDE Irvine32.inc

;//******************************** DATA SEGMENT ********************************
.data
;// variable declaration
source		BYTE		"This is the source string", 0
target		BYTE SIZEOF source DUP('#')
temp			BYTE SIZEOF source DUP('#')
;//******************************** CODE SEGMENT ********************************
.code

main PROC;// Begining of main procedure

CALL		Clrscr;// Clear screen

MOV		esi, 0
MOV		edi, SIZEOF source - TYPE source
MOV		ecx, LENGTHOF source

L1 :

MOV		bl, [esi]
MOV       al, [edi]
MOV		[esi], al
MOV		[edi], bl
ADD		esi, TYPE target
SUB       edi, TYPE source

LOOP	L1

mov    esi, OFFSET target
mov    ebx, 1
mov    ecx, SIZEOF target

LOOP   L1

call DumpMem
;// End main procedure
EXIT
main ENDP
END main