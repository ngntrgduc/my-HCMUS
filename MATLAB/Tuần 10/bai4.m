syms x y a;
fprintf('a) ');
f = cos(y^3);
disp(int(int(f, x, 0, y^2), y, 0, 1));

fprintf('b) ');
f = 1/(4 - x^2);
disp(int(int(f, x, -1, y), y, -1, 1));

fprintf('c) ');
f = 1/sqrt(a^2 - x^2);
disp(int(int(f, x), y));

fprintf('d) ');
f = cos(y^2);
disp(int(int(f, y, x, 1), x, 0, 1));

fprintf('e) ');
f = y*exp(x^2)/x^3;
disp(int(int(f, x, sqrt(y), 1), y, 0, 1));