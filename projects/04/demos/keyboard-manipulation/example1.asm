@KBD                //@24576 ......prepare keyboard memory map pointer
D=M                 //D=RAM[KBD] ....Saved keyboard memory map content so we can check it later
(END)
  @END
  D;JEQ               //IF keyboard doesn't have an input, run an infinite loop. Other wise our program will continue down...

//PSEUDOCODE:
//  grab address of keyboard memory map using @KBD
//  once you have reference to the memory address, if register contains only 0 (no key pressed) other wise we have a key pressed
//PROGRAM: 
//  Check if a key is being pressed on the keyboard


//TO TEST NO KEYBOARD INPUT:
//1.Load code in emulator
//2.Step through the code line by line. It should continue in an infinite loop since we haven't enabled the keyboard button (right side)

//TO TEST KEYBOARD INPUT
//1.Load code in emulator
//2.Click the keyboard button so we can start listening for key clicks and keep any alphanumberic key held
//3.Hold any alphanumeric key held
//4.With your mouse and clicker,  start running the program line by line.
//5.The program shouldn't get caught in the END loop we wrote since the jump condition will no longer be true.