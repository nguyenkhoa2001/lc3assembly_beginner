.ORIG	x3050
    AND R3,R3,#0
    LD R3 , SO101

    AND	R1,	R1,	#0
    ADD R2, R1, #1
    CONG_TIEP ADD R1, R1, R2

    ADD R2,R2,#2

    ADD R0,R2,R3
    BRN CONG_TIEP

    STI	R1,	LUU_TRU
    HALT
    LUU_TRU .fill x3000
    SO101 .fill #-101
.END