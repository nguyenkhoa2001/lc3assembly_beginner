; tim so chan le nhung co bao error

.ORIG X2000
IN
LD R2,SO0		; dua gia tri cua mem[so0]= .fill -48 => r2
ADD R1,R0,R2		; kiem tra ky tu do co lon hon or = 0 hay khong ?
BRN NHAP_SAI		; be hon khong nen bao error
LD R2,SO9		; dua gia tri cua mem[so9] = .fill -57 => r2
ADD R3,R0,R2		; kiem tra ky tu do co nho hon hoac = 9 hay khong ?
BRP NHAP_SAI		; lon hon nen bao error
AND R1,R0,X1		; and voi 1, neu 1011 and 0001 -> 0001 (p) la le
BRz 	SO_CHAN
LEA R0, CHUOI_LE
PUTS
HALT

SO_CHAN	LEA R0,CHUOI_CHAN
	PUTS
	HALT
NHAP_SAI	LEA	 R0,CHUOI_SAI
	PUTS
	HALT

SO0 .FILL -48
SO9 .FILL -57
CHUOI_LE	.STRINGZ "KY SO LA LE"
CHUOI_CHAN	.STRINGZ "KY SO LA CHAN"
CHUOI_SAI	.STRINGZ "KHONG PHAI KY SO"
.END

