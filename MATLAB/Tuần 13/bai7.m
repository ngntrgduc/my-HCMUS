% Cau 1
figure(1);
x = linspace(-5, 5);
y = linspace(-5, 5);
z = linspace(-5, 5);
r = sqrt(x.^2 + y.^2 + z.^2);
u = (-1 ./ r.^3) .* x;
v = (-1 ./ r.^3) .* y;
w = (-1 ./ r.^3) .* z;
quiver3(x, y, z, u, v, w);

% Cau 2
figure(2);
x = linspace(-5, 5);
y = linspace(-5, 5);
z = linspace(-5, 5);
u = 1 + x - x;
v = 2 + y - y;
w = 3 + z - z;
quiver3(x, y, z, u, v, w);

% Cau 3
figure(3);
x = linspace(-5, 5);
y = linspace(-5, 5);
z = linspace(-5, 5);
u = 1 + x - x;
v = 2 + y - y;
w = z;
quiver3(x, y, z, u, v, w);

% Cau 4
figure(4);
x = linspace(-5, 5);
y = linspace(-5, 5);
z = linspace(-5, 5);
u = x;
v = y;
w = 3 + z - z;
quiver3(x, y, z, u, v, w);

% Cau 5
figure(5);
x = linspace(-5, 5);
y = linspace(-5, 5);
z = linspace(-5, 5);
u = y;
v = z;
w = x;
quiver3(x, y, z, u, v, w);