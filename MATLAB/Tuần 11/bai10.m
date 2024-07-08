syms x;

f = exp(x);
fprintf('I1 = ');
disp(int(f, 0, pi));

f = sin(x) / x;
fprintf('I2 = ');
disp(int(f, 0, 1));

f = 2 ^ x;
fprintf('I3 = ');
disp(int(f, 0, 2));

f = 1 / (x^2 + 2);
fprintf('I4 = ');
disp(int(f, 0, 1));