//***************ROW1******************************
@SCREEN   //@16384    //where the screen begings (top left most) and also the first word group
M=1       //fill 1 out of 16 bits in the 1st word group.

@16385    //2nd word group 
M=1

@16415  //Represents the last (32nd word) on the row.. 16384 + 31
M=1     


//******************ROW2******************************(if you use Apple's color picker magnifying glass you will see that is the case.)
@16416  //the next row
M=1








//******************LAST ROW****************************** 255 below the first
@24544  //16384 + (255*32=8160)
M=1



//OTHER NOTES
//How many times do we need too loop?
//Well, there are 32 groups per row. We need to set each group to -1 so all 16bits in the group are 1.
//      there are 256 rows in total.
//      32groups*256rows=8192 the number of times we need to loop.























//NOTE about words:
//Recall in chapter 3 that a register is just a device that can store a value over time. 
//  Ex: a 1 bit register[0 or 1]
//
// Multiple registers grouped sequentially creates multi-bit registers
// Ex: a 3-bit [0 or 1][0 or 1][0 or 1]  (we could be arbitraily n-bit registers )
//
// Words are just registers with multiple bits.