@R0
D=M
@n
M=D      //n=R0


@R1
D=M
@m
M=D      //m=R1


@m
D=M
@i
M=D       //i=m


@SUM
M=0      //SUM=0


(LOOP)
@i
D=M
@i
M=D
@EXIT
D;JEQ    //if i=0 jump to exit    


@SUM
D=M
@n
D=D+M
@SUM
M=D
@i
M=M-1
@LOOP
0;JMP


(EXIT)
@SUM
D=M
@R2
M=D       //R2=sum
