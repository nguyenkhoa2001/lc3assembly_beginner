.ORIG	x3000
    IN

    ;CHECK CO PHAI SO NHO HON HOAC BANG 9
    LD	R2,	NUM_9
    ADD	R1 , R0 , R2
    BRP NHAPSAI

    ;CHECK CO PHAI SO LON HON HOAC BANG 0
    LD	R2,	NUM_0
    ADD	R1 , R0 , R2
    BRN NHAPSAI

    ;NEU KHONG LOI ->  CHUYEN MA ASCII
    STI	R1,	O_NHO_X4000
    LEA	R0, THANH_CONG
    PUTS
    HALT

NHAPSAI LEA	R0,	CHUOI_ERROR_O_9
                PUTS
                HALT
    THANH_CONG  .STRINGZ	"CHUYEN DOI THANH CONG"
    CHUOI_ERROR_O_9 .STRINGZ	"KHONG CHUYEN DUOC,KHONG PHAI KY SO"
    NUM_0 .FILL	X-30
    NUM_9 .FILL X-39
    O_NHO_X4000 .FILL	X4000
.END