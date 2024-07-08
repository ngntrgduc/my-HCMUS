% Cau b)
t1 = linspace(-20, 20, 500);
x2 = linspace(-100, 100);
x1 = 5 * (cos(t1) + t1.* sin(t1));
y1 = 5 * (sin(t1) - t1.* cos(t1));
y2  = x2;
plot(x1, y1, x2, y2);
title('Do thi cau 3b');
legend('', 'y = x');

syms t;
x = 5 * (cos(t) + t * sin(t));
y = 5 * (sin(t) - t * cos(t));
f = x - y;
disp(f);

disp(subs(x, 1));
disp(subs(y, 1));
i = linspace(-20, 20);
for i=linspace(-20, 20, 5000)
    if 5*(cos(i)+i*sin(i)) == 5*(sin(i) - i*cos(i))
        text(5*(cos(i)+i*sin(i)), 5*(sin(i) - i*cos(i)), '\circ');
    end
end