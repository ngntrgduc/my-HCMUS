a = input('Nhap a: ');
b = input('Nhap b: ');
c = input('Nhap c: ');
[x,y,n] = Giai_PT_Bac_2(a, b, c);
if n == 0
   fprintf('Phuong trinh vo nghiem'); 
elseif n == 1
   fprintf('Phuong trinh co nghiem kep : %g', x);
else
   fprintf('Phuong trinh co 2 nghiem la %g va %g', x, y);
end