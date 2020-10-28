; chuong trinh nay thuc hien phep XOR tren ngon ngu LC3
; gia su muon thuc hien ham XOR lay gia tri 2 thanh ghi x4000 va x4001, roi tra ket qua ve thanh ghi x4002


.ORIG x3000

LDI R1, GTR1	; R1 nhan gia tri thanh ghi x4000
LDI R2, GTR2	; R2 nhan gia tri thanh ghi x4001

; khoi tao thanh ghi nho
AND R3,R3,#0
AND R4,R4,#0
AND R5,R5,#0

; bat dau thuc hien phep xor

; R3 <- XY'
ADD R3,R2,#0
NOT R3,R3	; R3 <- Y'
AND R3,R1,R3

; R4 <- X'Y
ADD R4,R1,#0
NOT R4,R4	; R4 <- X'
AND R4,R4,R2

; R3 OR R4 = ((R3 OR R4)')' = (R3' AND R4')'
NOT R3,R3
NOT R4,R4
AND R3,R3,R4
NOT R3,R3	; KETQUA = R3

STI R3,KQUA

HALT

GTR1	.FILL	X4000
GTR2	.FILL	X4001
KQUA	.FILL	X4002
.END

