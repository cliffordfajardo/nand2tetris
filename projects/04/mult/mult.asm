// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

//DESCRIPTION:
//Multiplication: in the Hack computer, the top 16 RAM words (RAM[0]...RAM[15]) are also referred to as R0...R15. 
//With this terminology in mind, this program computes the value R0*R1 and stores the result in R2.
//The program assumes that R0>=0, R1>=0, and R0*R1<32768. Your program need not test these conditions, but rather assume that they hold.

//Pusedocode START
// `i`   variable for current iteration
// `sum` variable to serve as an accumulator
// `n` variable for the number of times we need to itereate
//Psuedocode END
//                                             RAM[1] will serve as i
//                                             ^
// Put your code here....Assumes we have entered values in RAM in GUI. Ex: RAM[0]=2 & RAM[1]=2 and RAM[2]
//                                                                         RAM[2] will store our result AKA product

//initialize i with RAM[1]
@R1
D=M
@i
M=D   


//initialize product with 0
@product
M=0
  
(LOOP)
  //if i <= 0, break out
  @i
  D=M
  @END
  D;JLE

  //decrement i
  D=D-1
  @i
  M=D

  //load & add R0 to product
  @product
  D=M       
  @R0
  D=D+M    //product + RAM[0]
  @product
  M=D 

  //restart loop
  @LOOP
  0;JMP
(END)

//load product into R2
@product
D=M
@R2
M=D





















//Cleaner solution
// @R0
// D=M   //D  = R0
// @iterations
// M=D   //iterations = R0
// @R2
// M=0   //R2 = 0

// (Loop)
// @iterations
// M=M-1
// @End
// M;JLT
// @R1
// D=M   //D  = R1
// @R2
// M=D+M //R2 = R0 + R1
// @Loop
// 0;JMP

// (End)