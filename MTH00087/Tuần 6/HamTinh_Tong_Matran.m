function x = HamTinh_Tong_Matran(A, n)
    if n == 1
        x = sum(A);
    elseif n == 2
        x = sum(A');
    end
end