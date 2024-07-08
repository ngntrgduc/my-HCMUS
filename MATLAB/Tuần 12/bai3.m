syms u v;

u1 = linspace(0, 1);
v1 = linspace(0, 2*pi);
[U, V] = meshgrid(u1, v1);
X = (1-U) .* (3+cos(V)) .* cos(5*pi*U);
Y = (1-U) .* (3+cos(V)) .* sin(5*pi*U);
Z = 2 * U + (1-U) .* sin(V);
mesh(X, Y, Z);

x = @(u, v) (1-u) .* (3+cos(v)) .* cos(5*pi*u);
y = @(u, v) (1-u) .* (3+cos(v)) .* sin(5*pi*u);
z = @(u, v) 2 .* u + (1-u) .* sin(v);
Q1 = quad2d(x, 0, 1, 0, 2 * pi);
Q2 = quad2d(y, 0, 1, 0, 2 * pi);
Q3 = quad2d(z, 0, 1, 0, 2 * pi);
Q = Q1 + Q2 + Q3;
fprintf('Tich phan bang quad2d: %f\n', Q);

x = (1-u) .* (3+cos(v)) .* cos(5*pi*u);
y = (1-u) .* (3+cos(v)) .* sin(5*pi*u);
z = 2 .* u + (1-u) .* sin(v);
I1 = int(int(x, u, 0, 1), v, 0, 2*pi);
I2 = int(int(y, u, 0, 1), v, 0, 2*pi);
I3 = int(int(z, u, 0, 1), v, 0, 2*pi);
I = double(I1 + I2 + I3);
fprintf('Tich phan bang int: %f\n', I);