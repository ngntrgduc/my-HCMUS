A = input('Nhap ma tran A : ');
B = input('Nhap ma tran B : ');
sa = size(A);
sb = size(B);
if sa(2) ~= sb(1)
    disp('Khong the tinh tich A va B');
else
    disp('P = ');
    disp(Tich_Matran(A, B));
end