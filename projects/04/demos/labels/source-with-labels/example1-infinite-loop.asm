@R0
D=1
(END) //@2   ..when counting the lines of this program, imagine for a second that this exists on line 2 (recall that in the CPU emulator our source code starts from line 0). The value of this label will be @2. So anywhere we reference '(END)' it will get swapped by @2. Ok now that you know that value will be @2, imagine this label declaration has been removed from this source file. When you count on from the rest of the program, begin counting again from line 2
  @END //line 2
0;JMP //line 3


//***************************************************************
//Notes:
//Slide 80 of chapter 4 powerpoint OR page 70 of the book talks about how labels get resolved to values
//Program: an example of an programming ending with an infinite loop.