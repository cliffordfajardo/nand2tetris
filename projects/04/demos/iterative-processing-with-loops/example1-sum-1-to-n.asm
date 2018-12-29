@R0     //A=0 ......... we're putting a value inside RAM[0]. This value is represented as N in our program
D=M     //D= RAM[A] ...which is the value inserted in the CPU emulator GUI
@n      //@16..........creating a variable called n.
M=D     //RAM[A] = D ...insert the value into RAM[16]....                                                       assigning to variable
@i      //@17..........creating a variable called i, this is used as our starting point in the loop
M=1     //RAM[A] = 1 ....insert value into RAM[17]                                                              assigning to variable
@sum    //@18..........creating a variable called sum, this will be used as the running total.
M=0     //RAM[A] = 0                                                                                            assigning to variable
(LOOP)    //@8  (this line doesn't exist in output program @8 will show up wherever @LOOP is)
  @i      //@17
  D=M     //D=RAM[A]
  @n      //@16
  D=D-M   //D=D-RAM[A]
  @STOP   //@24
  D;JGT   //if i(D) > n goto stop
  @sum    //@18
  D=M     //D=RAM[A]
  @i      //@17
  D=D+M
  @sum
  M=D     //                                        assigning to variable (increment sum)
  @i      //@17
  M=M+1   //RAM[A] = RAM[A] + 1                     assigning to variable (increment i)
  @LOOP   //@8
  0;JMP   //Jump to where the loop begins so we can increment and later check our condition again
(STOP)  
  @sum
  D=M   //D=RAM[A]
  @R1
  M=D   //RAM[A] = D                                assigning to variable
(END)
  @END
  0;JMP
//*******************************
//Usage: put a number (n) in RAM[0] in the CPU emulator GUI.
//Program: Sum numbers 1 to 3. (inclusive) .. 1+2+3 using a loop.
//PSEUDO CODE:
//- we will need some variables for state:
//  - `i` for the current iteration of the loop 
//  - `sum` for accumulating our total.
//  - `n` used for terminating our loop (the number of times we'll loop). 
//
// Variables with starting values
//  n   = R0 (set value in CPU emulator)
//  i   = 0
//  sum = 0 
//
//  LOOP
//    if i > n goto STOP
//    sum = sum + i
//    i = i + 1
//    goto LOOP
//  STOP
//  R1 = sum


//Variable setup stops before the "(LOOP)" line appears.

//***************NOTES ON VARIABLES
//A symbol that has not corresponding label declaration is treated as a reference to a variable.
//Variables are assigned a unique memory address by the assembler (the thing which translate our assembly into machine code),
//starting from RAM address 16 and onward

