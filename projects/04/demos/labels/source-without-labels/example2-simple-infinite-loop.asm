@R0       // A=0
D=M       // D-Register = RAM[A]  ...0 if there are no values in memory
@8        // A=8
D;JGT     // If D(R0) > 0 jump to line 8
@R1       // A=1
M=0       //RAM[A] = 0
@10       //A=10
0;JMP     //(unconditionl jump) ..jump to line 10 in the program
@R1       //A=1
M=1       //RAM[A] = 1
@10       //A=10
0;JMP     //Unconditional jump to line 10...will repeat infintely.

//***************************************************************8
//Program
//Computers: if R0>0
//              R1=1
//           else
//              R1=0


//Note about JMP directives
// We always compare the result of the computation to 0. Why? 0 is the baseline of comparison.
//
//    @10
//    D;JGT
//    ^
//    |
// our computation(what does it evaluate to?) then we have the conditional (if computation AKA 'out' is > 0 then jump to line 10)