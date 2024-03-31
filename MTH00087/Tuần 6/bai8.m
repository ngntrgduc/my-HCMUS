A = input('Nhap ma tran vuong A: ');
[n, m] = size(A);
if n ~= m 
    disp('A khong phai la ma tran vuong');
else
    disp('Ma tran tam giac tren: ')
    disp(Matran_TG_Tren(A));
    disp('Ma tran tam giac duoi: ')
    disp(Matran_TG_Duoi(A));
    disp('Ma tran duong cheo: ')
    disp(Matran_DuongCheo(A));
end