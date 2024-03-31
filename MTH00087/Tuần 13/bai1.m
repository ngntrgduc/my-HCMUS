%Cau 1
figure(1);
x = linspace(-10, 10);
y = linspace(-10, 10);
[X, Y] = meshgrid(x, y);
f1 = sqrt(X.^2 + Y.^2);
f2 = -sqrt(X.^2 + Y.^2);
f3 = nthroot(3 - X.^2 - Y.^2, 3);
mesh(X, Y, f1);
hold on;
mesh(X, Y, f2);
hold on;
mesh(X, Y, f3);

%Cau 2
figure(2);
x = linspace(-20, 20);
x = x(0 <= x <= 2);
y = linspace(-10, 10);
[X, Y] = meshgrid(x, y);
f1 = sqrt(2 * X - X.^2);
f1 = real(f1);
f2 = -sqrt(2 * X - X.^2);
f2 = real(f2);
z = X * Y -  X * Y;
f3 = (X.^2 + Y.^2) / 2;
mesh(X, f1, z);
hold on;
mesh(X, f2, z);
hold on;
mesh(X, Y, f3);

%Cau 3
figure(3);
x = linspace(-10, 10);
y = linspace(-10, 10);
[X, Y] = meshgrid(x, y);
f1 = X.^2 + Y.^2;
f2 = 2 * X.^2 + 2 * Y.^2;
f3 = X;
f4 = X.^2;
z = X * Y - X * Y;
mesh(X, Y, f1);
hold on;
mesh(X, Y, f2);
hold on;
mesh(X, f3, z);
hold on;
mesh(X, f4, z);

%Cau 4
figure(4);
x = linspace(-10, 10);
y = linspace(-10, 10);
[X, Y] = meshgrid(x, y);
f1 = 6 - X.^2 - Y.^2;
f2 = sqrt(X.^2 + Y.^2);
mesh(X, Y, f1);
hold on;
mesh(X, Y, f2);

%Cau 5
figure(5);
x = linspace(0, 10);
y = linspace(0, 10);
[X, Y] = meshgrid(x, y);
f1 = X + Y;
f2 = X.*Y;
f3 = 1 - X;
z = X * Y - X * Y;
mesh(X, Y, f1);
hold on;
mesh(X, Y, f2);
hold on;
mesh(X, f3, z);