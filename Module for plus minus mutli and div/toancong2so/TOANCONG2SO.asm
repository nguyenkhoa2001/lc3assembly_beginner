; chuong trinh cong 2 so, 3+3 = ?
.ORIG X3000

and r2,r2,#0 ; reset thanh ghi r2
and r3,r3,#0 ; reset thanh ghi r3
and r1,r1,#0 ; reset thanh ghi r1
ADD R2,R2,#3 ; r2 <- 3
ADD R3,R3,#3 ; r3 <- 3
ADD R1,R2,R3 ; r1 <- 1

STI R1, STORAGE ; lay gia tri tong dua vao thanh ghi co dia chi mem[mem[STORAGE]] = MEM[X4000] => R1 -> X4000 
HALT

STORAGE .FILL X4000
.END
