.ORIG X2000 		; BAT DAU TAI ADR X2000
TRAP X23		; DOC KY TU NHAP TU BAN PHIM 
ADD R1,R0,#0		; NHA MA KI TU 1 TU R0 -> R1
TRAP X23		; DOC KY TU NHAP TU BAN PHIM
ADD R2,R0,#0		; NHA MA KI TU 2 TU R0 -> R2

NOT R3,R2		; BU 1 CUA R2 ROI LUU VAO R3		
ADD R3,R3,#1		; hien tai R3 se la bu2 cua R2

ADD R4,R3,R1		; R4 = R3 + R1 tu'c la` R4 = R1 - R2 ( so sa'nh hai ki' tu.' nha^.p tu'` ba`n phi'm coi ca'i na`o lo'n ho'n)

; re nhanh neu R4 DUONG, TUC LA R1 LON HON R2
BRP LON			; nhay den label LON		


; RE NHANH NEU R4 BANG 0, TUC LA R1 = R2
BRZ BANG		; nhay den label BANG


;RE NHANH NEU R4 A^M, TUC LA R1<R2
LEA R0,CHUOI3		; d-u'a chuo^~i 3 vao trong bien nho RO
PUTS			; in ra man hinh
HALT			; tam dung lai chuong trinh va in thong bao halt ra man hinh


LON LEA R0,CHUOI1	
	PUTS
	HALT

BANG	LEA R0,CHUOI2
	PUTS
	HALT

CHUOI1 .STRINGZ "KI TU 1 > KI TU 2"
CHUOI2 .STRINGZ "KI TU 1 = KI TU 2"
CHUOI3 .STRINGZ "KI TU 1 < KI TU 2"

.END