a = input('nhap a: ');
x = a;
y = (x + a/x)/2;
while abs(y - x) >= 10^-6
    x = y;
    y = (x + a/x) / 2;
end
fprintf('can bac 2 cua %g la = %0.5f\n', a, y);