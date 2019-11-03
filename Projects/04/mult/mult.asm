// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

// Method is to add the first # R0 with itself R1 times
// so the value of R1 determines our loop size R0 is what we are adding
// over and over again.


@R2  	// Make sure our resulst memory is empty and initialized to 0
M = 0

(LOOP)
	
@R1 	//load R1 in and assing its value to D memory
D = M  

@END
D;JEQ //check to see if what we loaded from R1 into D is equal to 0
	
@R0   	//load our addition value into D memory for manipulation
D = M	

@R2 
M = M+D //add the value of R1(M) with R0(D) and set that value to R2 

@R1  	// load R1 and subtract 1 since its acting as a counter of sorts
M = M-1

@LOOP
0;JMP

(END)

@END
0;JMP