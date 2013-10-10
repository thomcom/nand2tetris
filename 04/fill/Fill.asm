// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, the
// program clears the screen, i.e. writes "white" in every pixel.

// Put your code here.
@R0
M=0
@LOOPKBD
0,JMP
(BLACK)
@R1
M=-1
@DRAW8k
0,JMP
(WHITE)
@R1
M=0
(DRAW8k)
@R0
D=M
@SCREEN
A=A+D
M=-1
@R0
M=M+1
@10
D=A
@R0
D=D-M
@END
D,JLE
(LOOPKBD)
@BLACK
0,JMP
(END)
   @END
   0,JMP
