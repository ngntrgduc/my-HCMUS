syms k;

disp('Cau a:');
xn = 12 / (-5)^k;
x = linspace(-5, 5);
figure(1);
for i = 1 : 20
    f = symsum(xn, k, 1, i);
    y = subs(f, x);
    plot(x, y);
    hold on;
end
fprintf('Chuoi hoi tu tai: %g\n', symsum(xn, k, 1, Inf));

disp('Cau b:');
xn = tan(k);
x = linspace(-pi, pi);
figure(2);
for i = 1 : 20
    f = symsum(xn, k, 1, i);
    y = subs(f, x);
    plot(x, y);
    hold on;
end
disp('Chuoi khong hoi tu');

disp('Cau c:');
xn = 1 / 15^1.5 - 1 / (k+1) ^ 1.5;
x = linspace(-5, 5);
figure(3);
for i = 1 : 20
    f = symsum(xn, k, 1, i);
    y = subs(f, x);
    plot(x, y);
    hold on;
end
disp('Chuoi khong hoi tu');

disp('Cau d:');
xn = 1 / (k * (k + 1));
x = linspace(-5, 5);
figure(4);
for i = 1 : 20
    f = symsum(xn, k, 1, i);
    y = subs(f, x);
    plot(x, y);
    hold on;
end
fprintf('Chuoi hoi tu tai: %g', symsum(xn, k, 1, Inf));