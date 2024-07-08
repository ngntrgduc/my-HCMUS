syms x;
fprintf('a) ');
f = sqrt(1 - x^2);
disp(int(f));

fprintf('b) ');
f = sin(sqrt(x));
disp(int(f));

fprintf('c) ');
f = cos(x)^4;
disp(int(f, 0, pi/2));

fprintf('d) ');
f = abs(x - 5);
disp(int(f, 0, 10));

fprintf('e) ');
f = tan(x);
disp(int(f, pi/4, pi/3));