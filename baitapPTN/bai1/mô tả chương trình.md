Chương trình máy tình này gồm có bốn chức năng. Các giá trị đầu vào của chương trình được cung cấp sẵn trên bộ nhớ của máy tính gồm có: giá trị 1 (GiaTri1), giá trị 2 (GiaTri2) và phép tính (PhepTinh) như được thấy ở bảng 1, với PhepTinh cho biết phép tính nào sẽ được thực hiện đối với hai giá trị: GiaTri1 và GiaTri2. Kết quả sau khi thực hiện phép tính được lưu trữ lại bộ nhớ của máy tính tại ô nhớ có địa chỉ x2FF3

Bảng 1: Vị trí ô nhớ của thao tác nhập & xuất

Nhập/Xuất             ||	Vị trí ô nhớ
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
PhepTinh	      ||	x2FF0
GiaTri1		      ||	x2FF1
GiaTri2		      ||	x2FF2
KetQua		      ||	x2FF3


Bảng 2: Các phép tính

Phép Tính	|	PhepTinh	| Minh hoạ
____________________________________________________________
Phép cộng	|	x0000		| GiaTri1 + GiaTri2
Phép Trừ	|	x0001		| GiaTri1 - GiaTri2
Dịch trái	|	x0002		| Dịch trái (GiaTri1) GiaTri2 bit
OR		|	x0003		| GiaTri1 OR GiaTri2


Ví dụ:
PhepTinh x0000 ;GiaTri1 x0133 ;	GiaTri2 x0124; KetQua x0257;
PhepTinh x0001 ;GiaTri1 x0133 ;	GiaTri2 x0124; KetQua x000F;
PhepTinh x0002 ;GiaTri1 x0133 ;	GiaTri2 x0003; KetQua x0998;
PhepTinh x0003 ;GiaTri1 x0133 ;	GiaTri2 x0124; KetQua x0137;