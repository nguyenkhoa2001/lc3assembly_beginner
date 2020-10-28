; chuong trinh nay se lay gia tri trong o nho x4000 co chua so co hai chu so roi thong bao ra ngoai man hinh

.ORIG X3000

LDI R1, GTRI
LD R4, ASCII_NUM


; khoi tao o nho ::: R2 hang chuc ::: R3 hang don vi :: RO chuyen ma ASCII
AND R0,R0,#0
AND R2,R2,#0
AND R3,R3,#0

; dem hang chuc
CONT_CHUC	ADD R1,R1,#-10

		BRN STOP_CHUC

ADD R2,R2,#1
BR CONT_CHUC

STOP_CHUC	

;nhap hang don vi

ADD R3,R1,#10

; KIEM TRA IN HANG CHUC, HANG DON VI
		ADD R2,R2,#0
		BRZ IN_DONVI 

	ADD R0,R2,R4	;	R2->ASCII
	OUT
IN_DONVI
	AND R0,R0,#0
	ADD R0,R3,R4
	OUT
HALT
ASCII_NUM .FILL X30
GTRI .FILL X4000

.END