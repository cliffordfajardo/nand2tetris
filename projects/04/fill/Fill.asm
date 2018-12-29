// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel; (use -1 to fill a pixel)
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel (0000);
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.


//Set up 'max' variable which is the # of iterations we need to do to fill screen
@8192
D=A
@max
M=D

//set up 'i' variable for current index
@i
M=0

(LOOP)  //At the beginning of each loop check if a key has been pressed
  @KBD
  D=M
  @CLEAR_SCREEN_IF_NO_KEYPRESS
  D;JEQ

  (FILL_SCREEN_IF_KEYPRESS)
    @max
    D=M
    @i
    D=D-M     //(i=0: 0-8192) (i=1: 1-8192)....next loop (i=8192: 8192-8192)
    @LOOP
    D;JEQ
  
    @i
    D=M
    @SCREEN
    D=D+A
    A=D
    M=-1
    
    //increment i for next loop pass
    @i
    M=M+1
    
    @LOOP
    0;JMP
  
  (CLEAR_SCREEN_IF_NO_KEYPRESS) //we need to work our way backgrounds.. we can't start from the 
    @i
    D=M
    @SCREEN
    A=A+D     //If key was pressed during 2 cpu cycles then 2 lines will appear and our index will be 1  (so grab the part of the screen we last drew)
    M=0
    
    //jump back if i == 0
    @i
    D=M
    @LOOP
    D;JLE

    //decrement I
    D=D-1
    @i
    M=D

//run loop again..infinitely
@LOOP
0;JMP