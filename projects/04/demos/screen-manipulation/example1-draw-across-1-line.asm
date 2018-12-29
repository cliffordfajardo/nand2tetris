@SCREEN   //@16384
M=1       //fill 1 out of 16 bits in the first word group.

@16385    //Represents the second 16 bit word
M=1

@16415  //Represents the last (32nd word) on the row.. 16384 + 31
M=1

        
@16416  //word on the next row (if you use Apple's color picker magnifying glass you will see that is the case.)
M=1



//NOTE about words:
//Recall in chapter 3 that a register is just a device that can store a value over time. 
//  Ex: a 1 bit register[0 or 1]
//
// Multiple registers grouped sequentially creates multi-bit registers
// Ex: a 3-bit [0 or 1][0 or 1][0 or 1]  (we could be arbitraily n-bit registers )
//
// Words are just registers with multiple bits.