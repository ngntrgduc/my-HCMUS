% Cau a)
figure(1);
r = linspace(0, 4, 500);
Phi = linspace(0, 2 * pi, 500);
[R, phi] = meshgrid(r, Phi);
r1 = R .* cos(phi);
r2 = R .* sin(phi);
r3 = R .^2 + 1;
mesh(r1, r2, r3);

% Cau b)
figure(2);
v = linspace(-1, 1, 500);
u = linspace(0, 2 * pi, 500);
[U, V] = meshgrid(u, v);
r1 = sqrt(1 + 4 * V.^2) .* cos(U);
r2 = V;
r3 = sqrt(1 + 4 * V.^2) .* sin(U);
mesh(r1, r2, r3);

% Cau c)
figure(3);
y = linspace(0, 4 * pi, 500);
t = linspace(0, 2 * pi, 500);
[Y, T] = meshgrid(y, t);
r1 = (2 + sin(Y)) .* cos(T);
r2 = Y;
r3 = (2 + sin(Y)) .* sin(T);
mesh(r1, r2, r3);

% Cau d)
figure(4);
v = linspace(0, 2 * pi, 500);
u = linspace(0, 4 * pi, 500);
[U, V] = meshgrid(u, v);
r1 = cos(U) / 4 + cos(V);
r2 = sin(U) / 4 + sin(V);
r3 = V;
mesh(r1, r2, r3);

% Cau e)
figure(5);
v = linspace(0, 4 * pi, 500);
u = linspace(0, 2 * pi, 500);
[U, V] = meshgrid(u, v);
r1 = cos(U);
r2 = sin(U);
r3 = U + V / 4;
mesh(r1, r2, r3);

% Cau f)
figure(6);
v = linspace(0, 2 * pi, 500);
u = linspace(0, 4 * pi, 500);
[U, V] = meshgrid(u, v);
r1 = U .* cos(V);
r2 = U .* sin(V);
r3 = U .* V;
mesh(r1, r2, r3);