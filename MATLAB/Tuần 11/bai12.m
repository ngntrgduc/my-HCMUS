syms x y z;

f = exp(y - x);
fprintf('I1 = ');
disp(int(int(f, y, 0, 0.5), x, 0, 0.5));

f = y * sin(x) + x * cos(y);
fprintf('I2 = ');
disp(int(int(f, y, 0, 2 * pi), x, -pi, 3 * pi / 2));

f = 1 / sqrt(1 - y^2);
fprintf('I3 = ');
disp(int(int(f, y, 0, sin(x)), x, 0, pi / 4));

f = exp(x + y + z);
fprintf('I4 = ');
disp(int(int(int(f, z, 0, 0.5), y, 1, 2), x, 0, 1));

f = y^2 * z;
fprintf('I5 = ');
disp(int(int(int(f, z, 0, y), y, x, 1), x, 0, 1));

f = y;
fprintf('I6 = ');
disp(int(int(int(f, z, x - y, x + y), y, x^2, x), x, 0, 1));