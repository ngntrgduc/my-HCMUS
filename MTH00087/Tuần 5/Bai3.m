a = input('Nhap a: ');
b = input('Nhap b: ');

[x, n] = Giai_PT_Bac_1(a, b);
if n == -1
   fprintf('Phuong trinh co vo so nghiem'); 
elseif n == 0
   fprintf('Phuong trinh vo nghiem');
else
   fprintf('Phuong trinh co nghiem la: %g', x);
end