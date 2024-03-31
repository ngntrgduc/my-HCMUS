a = input('Nhap a: ');
b = input('Nhap b: ');
if a < b
   t = a;
   a = b; 
   b = t;
end
aa = a;
bb = b;
q = floor(a / b);
r = a - q * b;
if r == 0
    UCLN = min(a, b);
else
    while r ~= 0
        q = floor(a / b);
        if a == q * b
            UCLN = b;
            r = 0;
        else 
            r = a - q * b;
            a = b;
            b = r;
        end
    end
end
fprintf('UCLN = %g, BCNN = %g', UCLN, aa*bb/UCLN);
    