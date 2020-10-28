.ORIG	x3000
    AND  R3,R3,#0
    AND  R4,R4,#0
    ADD  R3,R3,#2
    IN
    ADD	R1,	R0,	#0
    BRNZP MODULE_CHUYEN_MA

    NHAP_TIEP IN
    ADD	R1,	R0,	#0

    MODULE_CHUYEN_MA
    ;CHECK CO PHAI SO NHO HON HOAC BANG 9
    LD	R2,	NUM_9
    ADD	R1 , R0 , R2
    BRP NHAPSAI

    ;CHECK CO PHAI SO LON HON HOAC BANG 0
    LD	R2,	NUM_0
    ADD	R1 , R0 , R2
    BRN NHAPSAI

    ;NEU KHONG LOI ->  CHUYEN MA ASCII SANG SO
    ADD R4,R4,R1
    ADD R0,R0,#0
    ADD R3,R3,#-1
    BRP NHAP_TIEP

    STI	R4,	O_NHO

    LEA R0, THONGBAO_XUATSO
    PUTS


; IN HAI CHU SO DO LEN MAN HINH
LD R5, ASCII_NUM


; khoi tao o nho ::: R2 hang chuc ::: R3 hang don vi :: RO chuyen ma ASCII
AND R0,R0,#0
AND R2,R2,#0
AND R3,R3,#0

; dem hang chuc
CONT_CHUC	ADD R4,R4,#-10

		BRN STOP_CHUC

ADD R2,R2,#1
BR CONT_CHUC

STOP_CHUC	

;nhap hang don vi
ADD R3,R4,#10

; KIEM TRA IN HANG CHUC, HANG DON VI
		ADD R2,R2,#0
		BRZ IN_DONVI 

	ADD R0,R2,R4	;	R2->ASCII
	OUT
IN_DONVI
	AND R0,R0,#0
	ADD R0,R3,R5
	OUT
    HALT
NHAPSAI LEA	R0,	CHUOI_ERROR_O_9
                PUTS
                HALT
    O_NHO   .FILL	X4000
    THONGBAO_XUATSO .STRINGZ	"SO BAN VUA NHAP LA: "
    CHUOI_ERROR_O_9 .STRINGZ	"KHONG CHUYEN DUOC,KHONG PHAI KY SO"
    ASCII_NUM .FILL	x30
    NUM_0 .FILL	X-30
    NUM_9 .FILL X-39
.END