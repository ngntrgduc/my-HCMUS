% Cau a:
figure(1);
x = linspace(-3, 3);
y = linspace(-3, 3);
[X, Y] = meshgrid(x, y);
z = X.^2 .* Y .* exp(-X.^2 - Y.^2);
mesh(X, Y, z);
title('Cau a');

% Cau b:
figure(2);
t = linspace(0, 5);
x = sin(4 * t);
y = cos(4 * t);
plot(x, y);
axis square;
title('Cau b');

% Cau c:
figure(3);
a = input('Nhap a cho cau c: ');
s = linspace(0, 2 * pi);
t = linspace(-1, 1);
[S, T] = meshgrid(s, t);
x = (a + T .* cos(S/2)) .* cos(S);
y = (a + T .* cos(S/2)) .* sin(S);
z = T .* sin(S/2);
mesh(x, y, z);
title('Cau c');