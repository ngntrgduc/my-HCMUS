A = input('Nhap ma tran A : ');
B = input('Nhap ma tran B : ');
if size(A) ~= size(B)
    disp('Khong the tinh tong A va B');
else
    disp('S = ');
    disp(Tong_Matran(A, B));
end