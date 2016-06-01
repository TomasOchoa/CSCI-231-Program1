;// Symbolic Text Constants			(SymTxtConst.asm)

;// Write a program that defines symbolic names for several
;// string literals (characters between quotes). Use each name
;// in a variable definition.

INCLUDE Irvine32.inc

;// Text Constants
Sentence1		TEXTEQU	  <"Hello there!">
Sentence2		TEXTEQU	  <"My name is Tomas.">
Sentence3		TEXTEQU	  <"I am in CSCI 231.">
Sentence4		TEXTEQU	  <"My proffesor's name is James Ryder.">

;// Data Segment
.data
Variable1		BYTE     Sentence1		;// Variable1 = Sentence1
Variable2		BYTE     Sentence2		;// Variable2 = Sentence2
Variable3		BYTE	    Sentence3		;// Variable3 = Sentence3
Variable4		BYTE	    Sentence4		;// Variable4 = Sentence4

;// Code Segment
.code
main	   PROC  

    exit    
    
main ENDP
END  main

