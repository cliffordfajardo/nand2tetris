@0      // Set A register to 0
D=M     // Recall that M is equivalent to RAM[A] which is now RAM[0] 
        // If you loaded a value to RAM[0] via the GUI then D will now hold value of RAM[0]

@1      // Set A register to 1
D=D+M   // Recall that M is equivalent to RAM[A] which is now RAM[1] 
          // If you loaded a value to RAM[1] via the GUI then D will now hold value of RAM[1]

@2      // Set A register to 2
M=D     //Recall that M is equivalent to RAM[A] which is now RAM[2]..this Reads RAM[2] = D (which is the value that's currently in D register)

//****************************************
//SUGGESTION:
// Run this program in the CPU emulator to understand it.
//
//PROGRAM: 
// Adds up 2 numbers ....specifically let's do this: RAM[2] = RAM[0] + RAM[1]
//
//USAGE: 
// put the values that you wish to add in RAM[0] * RAM[1]