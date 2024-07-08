syms x y;

fprintf('a) ');
disp(int(exp(-x^2), x, -inf, inf));

fprintf('b) ');
disp(int(int(exp(-x^2 - y^2), x, -inf, inf), y, -inf, inf));