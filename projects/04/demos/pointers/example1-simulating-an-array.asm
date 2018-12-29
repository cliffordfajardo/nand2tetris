//Let myArray=100
@100        //A=100
D=A         //D=100
@myArray    //A=16
M=D         //RAM[16] = 100 <----- our array variable now points to register 100

//let n = 2
@2          //A=4
D=A         //D=2
@n          //@17
M=D         //RAM[17] = 2

// let i = 0
@i          //@18
M=0         //RAM[18] = 0
(LOOP)      //@10
  @i        //@18
  D=M       //D=RAM[18] --> 0
  @n        //@17
  D=D-M     //D=D-RAM[17] --> 0-4 = -4
  @END
  D;JEQ

//RAM[myArray+i] = -1 .............
@myArray
D=M         //D=RAM[16] --> 100
@i          //@18
A=D+M       //A=100+RAM[18] --> 100+0 --> 100
M=-1        //RAM[A] = -1.......RAM[100] = -1

//i++
@i          //18
M=M+1       //RAM[18] = RAM[18] (0) + 1 ---> 1

@LOOP       //@10
0;JMP

(END)
  @END
  0;JMP
//**********************************************
//NOTE: Variables that represent memory addresses are called pointers
//In this context, arrays are just a block of memory registers one after the other.
//We will need a variable that holds the current address (TODO)

// PROGRAM: fill an array with 2 values: -1, -1, 
// Pseudo high level 
// for(i=0; i < n; i++){
//  arr[i] = =-1
// }
//Suppose our array variable called 'myArray' points to register 100... and we will add 4 items to our array.
