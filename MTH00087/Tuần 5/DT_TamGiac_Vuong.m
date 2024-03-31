function x = DT_TamGiac_Vuong(a, b, c)
if (a^2 + b^2 == c^2 || c^2 + b^2 == a^2 || a^2 + c^2 == b^2)
    p = (a+b+c) / 2;
    s = sqrt(p * (p-a) * (p-b) * (p-c));
    fprintf('Dien tich tam giac vuong la : %g', s);
    x = s;
else 
    fprintf('Khong phai tam giac vuong');
end
end