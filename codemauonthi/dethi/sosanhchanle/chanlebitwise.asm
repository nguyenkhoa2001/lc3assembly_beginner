.ORIG	x3000
    AND R0,R1,X0001
    BRP SO_LE ; tức là bit cuối cùng là lẻ nên chuyển tới dịch phải thanh ghi 2 bit
    ; nếu không phải số lẻ thì thực hiện chẵn -> dịch trái thanh ghi 2 bit
    ADD R1,R1,R1
    ADD R1,R1,R1
    AND R0,R0,X0000
    ADD R0,R1,X0
    HALT
    SO_LE ; thực hiện thuật toán chia 2 lấy phần nguyên 2 lần
    AND	R3,R3,x0
    ; lần 1
    AGAIN ADD R1,R1,-2
    BRN SAVE
    ADD R3,R3,#1
    BRNZP AGAIN
    ; lần 2
    SAVE ADD R1,R3,0

    AND	R3,R3,x0
    AGAIN2 ADD R1,R1,-2
    BRN SAVE2
    ADD R3,R3,#1
    BRNZP AGAIN2

    SAVE2 AND R0,R0,X0
    ADD R0,R3,x0
    HALT
.END