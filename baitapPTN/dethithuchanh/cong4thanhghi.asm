.ORIG	x3000 ; CHƯƠNG TRÌNH THỰC HÌNH PHÉP TOÁN CỘNG 4 THANH GHI R1 + R2 - R3 + R4 có nên in ?
    ADD	R5,	R1,	#0
    ADD	R5,	R2,	R5
    NOT R3, R3
    ADD R3, R3, #1
    ADD	R5,	R3,	R5
    ADD	R5,	R4,	R5
    ; hiện tại r5 đang chứa giá trị

    
    HALT
.END