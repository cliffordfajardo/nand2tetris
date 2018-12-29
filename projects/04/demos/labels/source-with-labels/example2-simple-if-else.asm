@R0
D=M
@IS_POSITIVE //@8
D;JGT
@R1
M=0    
@10    
0;JMP
(IS_POSITIVE) //when counting lines in program this is on line 8 so '@positive references' will become @8...but when you continue counting the rest of the lines in program, imagine that this label declaration no longer exists. The next line will be 8.
  @R1 //line 8
  M=1 //line 9
(END) //line 10 so @end will be @10
  @END //@10  .......line 10
  0;JMP //..........line 11


//***************************************************************
//Program
//Computers: if R0>0
//              R1=1
//           else
//              R1=0


//Notes:
//Slide 80 of chapter 4 powerpoint OR page 70 of the book.
//What are we using labels here for?
//1) Labels make our code more human-readable.
//  - The way I read this now is: on line 2 we have a 'IS_POSITIVE' label.
//    Hmm, at a high level I can assume that we're going to do a check for if a value is positive.
//    Yes, it looks like on the next line we'll do a check for if D is greater than 0. 
//    If it is, we'll do a jump.
//    Where will I jump? Well I assume it's going to be to an area of the program where we have spefic logic for when D is positive....
//    But more specifically where we will jump to in our program is the value that "(IS_POSITIVE)" label is translated to (see pg.70 for the rules on this or the top of this commented file.).
