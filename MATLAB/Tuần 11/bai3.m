syms x;
f = input('Nhap ham f: ');
n = input('Nhap bac dao ham: ');
x0 = input('Nhap diem can tinh dao ham: ');
if n == 1 || n == 2
    g = Xapxi_daoham(f, n, x0, 0.2);
    fprintf('Gia tri xap xi dao ham voi buoc nhay = 0.2: %f\n', g);
    g = Xapxi_daoham(f, n, x0, 0.1);
    fprintf('Gia tri xap xi dao ham voi buoc nhay = 0.1: %f\n', g);
    g = Xapxi_daoham(f, n, x0, 0.01);
    fprintf('Gia tri xap xi dao ham voi buoc nhay = 0.01: %f\n', g);
    p = double(subs(diff(f, n), x0));
    fprintf('Gia tri dao ham bang ham cua MATLAB: %f\n', p);
end;