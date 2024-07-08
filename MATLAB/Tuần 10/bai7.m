syms x y z t;

fprintf('a)');
f = sin(x^2 + y^2) / (x^2 + y^2);
S = 0;
S = S + diff(f, x, 2);
S = S + diff(f, y, 2);
disp(simplify(S));

fprintf('b)');
f = exp(-y^2 - z^2) * cos(sqrt(1 + x - 7));
S = 0;
S = S + diff(f, x, 2);
S = S + diff(f, y, 2);
S = S + diff(f, z, 2);
disp(simplify(S));

fprintf('c)');
f = log((2*x*y) / (x^2 + 2*y^2 + 3*z^2)) + (x*y*z*exp(x*y*z*t)) / sqrt(x^2 - y^2 + z^2 - t^2);
S = 0;
S = S + diff(f, x, 2);
S = S + diff(f, y, 2);
S = S + diff(f, z, 2);
S = S + diff(f, t, 2);
disp(simplify(S));