.ORIG X3000

IN
AND R1, R1, #0
ADD R1, R1, #2
NOT R1, R1
ADD R1, R1, #1
CHIA	ADD R0, R0, R1
	BRNZ THOATCHIA
	ADD R2,R2,#1
	BRNZP CHIA
THOATCHIA

ADD R3
STI R0, M2
HALT
M2 .FILL X4000
.END