.ORIG	x3000
    
    IN
    
    LD R5 , A_THUONG
    ADD R3,R0,R5
    BRP CHUYEN_THUONG ; nếu dương thì chuyển từ chữ thường sang chữ HOA

    ;nếu không thì chuyển từ HOA sang thường
    LD R5 , TO_LOWER
    ADD	R0,	R0,	R5
    OUT
    HALT

    CHUYEN_THUONG 
    LD R5 , TO_CAPITAL
    ADD	R0,	R0,	R5
    OUT
    HALT

    A_THUONG .FILL	#-97
    TO_CAPITAL .FILL	#-32
    TO_LOWER .FILL	#32
.END
