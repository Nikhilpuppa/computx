(BEGIN)      // loop runs infinitely

@KBD         //provoking keyboard
D=M
@fillblack
D;JNE        //if d!=0 jump to fillblack
@fillwhite
D;JEQ        //if D==0 jump to fillwhite

(fillblack)
@i     //counter
M=-1
(LOOP)
@i
M=M+1
D=M
@SCREEN
A=A+D    //goes to next memory location after filling the existing screen with black
M=-1
@8191 
D=D-A     // checks if Finished painting the screen black
@LOOP
D;JNE       
@BEGIN    // Jump back to BEGIN
0;JMP

(fillwhite)
@j     //counter
M=-1
(LOOPWHITE)
@j
M=M+1
D=M
@SCREEN
A=A+D      //goes to next memory location after filling the existing screen with white
M=0
@8191
D=D-A      //// checks if Finished painting the screen white
@LOOPWHITE
D;JNE       

@BEGIN      // Jump back to BEGIN
0;JMP