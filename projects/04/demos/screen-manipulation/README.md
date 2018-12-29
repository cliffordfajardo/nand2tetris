# Screen Notes

The Hack computer includes a black-and-white screen organized as 256 rows of 512 pixels per row.

```
                            512 pixels across
                             __________________
                            |                  |
256 pixels in height (r0ws) |                  |
                            |__________________|
```

@SCREEN = @16384 //first row
last row = 16384 + 511 

The screen’s contents are represented by an 8K memory map that starts at RAM address 16384 (0x4000).

Each row in the physical screen, starting at the screen’s top left corner, is represented in the RAM by 32 consecutive 16-bit words.

Thus the pixel at row r from the top and column c from the left is mapped on the c % 16 bit (counting from LSB to MSB) of the word located at RAM[16384 + r *􏰀 32 + c/16]. 

To write or read a pixel of the physical screen, one reads or writes the corresponding bit in the RAM-resident memory map
(1=black, 0 = white). 

Example: