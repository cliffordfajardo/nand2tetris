@SCREEN     //@16384
D=A         //D=16384
@addr       //@16
M=D         //RAM[16] = A(16384)
@0
D=M         //D=RAM[0] ...0 holds rectangle height value that we inserted in CPU GUI
@n          //@17
M=D         //RAM[A] = D (the height of the screen)
@i          //@18
M=0         //RAM[A] = 0
(LOOP)
  @i        //@18
  D=M       //D=RAM[A]
  @n        //@17
  D=D-M     //D=D-RAM[A]  ...-2 if RAM[0] is 2
  @END 
  D;JGT     //if i > n goto END

  @addr     //@16
  A=M       //A=RAM[A]           16384
  M= -1     // RAM[A or addr] = 11111111111111    <---will draw a line first at 16384...

  @i
  M=M+1     //RAM[A] = RAM[A]+1       <----i = i+1
  @32
  D=A       //D=32
  @addr     //@16
  M=D+M     //RAM[A] = 32+RAM[A]    <----addr = addr + 32
  @LOOP     //@10
  0;JMP
(END)
  @END
  0;JMP

//****************
//PROGRAM:
//Draws a rectangle at the screen's top left corner, with width of 16px and height of RAM[0] pixels.
//
//USAGE: put non-negative number (rectangles height) in RAM[0]
//
//PSUEDOCODE:
//for(i=0; i < n; i++){
//  draw 16 pixels at the beginning of row i
//}
//
//addr = SCREEN <----create a variable `addr` which will contain the base address of the keyboard memory map.
//n = RAM[0]
//i=0
//
//LOOP
//  if i > n goto END
//  RAM[addr] = = -1 //equivalent to 111111
//    advance to the next row
//    addr = addr + 32
//    i = i + 1
//    goto LOOP
//  END
//    goto END