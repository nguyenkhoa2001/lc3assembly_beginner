.ORIG X3000

TRAP X23
ADD R1,R0,#0

TRAP X23
NOT R0,R0
ADD R0,R0,#1
ADD R1,R0,R1

BRZP CONT
LD R0,ASCII_GACH
OUT

NOT R1,R1
ADD R1,R1,#1

CONT LD R0,ASCII_0
ADD R0,R0,R1
OUT
HALT

ASCII_0		.FILL X30
ASCII_GACH	.FILL X2D
.END