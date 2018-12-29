@7    // Sets A register to 7
D=A   // Sets D register to A value which is 7
@5   // Set A register to 5
M=D  // Recall that M is equivant to RAM[A] ...A is currently 5 now so we have RAM[5] = D (D is 7)


//*******************************
//SUGGESTION: run this in the CPU emulator and walk through the code to get familiar with what's happening.
//ASSUMES NO VALUE IS IN RAM inside the emulator
//PROGRAM: make RAM[5] = 7
