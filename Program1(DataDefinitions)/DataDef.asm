;// Data Definitions		    (DataDef.asm)
;// Write a program that contains a definition of each data
;// type listed in table 3-2 (P.74)

INCLUDE Irvine32.inc

;// Data segment
.data
aByte	  BYTE	    255		 ;// (8 bits)
aSbyte	  SBYTE	     -2		 ;// (Signed 8-bit)
aWord 	  WORD	    65535		 ;// (unsigned 16-bit)
aSWord      SWORD	    -32767	 ;// (signed 16-bit)
aDword      DWORD	    4294967295	 ;// (unsigned 32-bit) 
aSDword     SDWORD	    -2147483647 ;// (signed 32-bit)
aFword	  FWORD	    ?		 ;// 48-bit integer (no value)
aQword	  QWORD	    ?		 ;// 64-bit integer (no value)
aTbyte	  TBYTE	    ?		 ;// 80-bit/10 byte integer (no value)
aReal4	  REAL4	    -1.2		 ;// 4-byte single-precision floating-point 
aReal8	  REAL8	    3.2E-260	 ;// 8-byte double-precision floating-point 
aReal10	  REAL10	    4.6E+4096	 ;// 10-byte extended-precision value


;// Code Segment
.code
main	   PROC

    exit

main ENDP
END main
