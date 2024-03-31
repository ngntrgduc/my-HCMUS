syms x y;
disp('a)');
f = x^2 + x*y + y^2 + y;
disp(diff(f, x));
disp(diff(f, x, 2));
disp(diff(diff(f, x), y));
disp(diff(f, y));
disp(diff(f, y, 2));

disp('b)');
f = x*exp(-2*x^2 - 2*y^2);
disp(diff(f, x));
disp(diff(f, x, 2));
disp(diff(diff(f, x), y));
disp(diff(f, y));
disp(diff(f, y, 2));

disp('c)');
f = exp(x)*cos(y);
disp(diff(f, x));
disp(diff(f, x, 2));
disp(diff(diff(f, x), y));
disp(diff(f, y));
disp(diff(f, y, 2));