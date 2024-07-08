u = linspace(0, 2*pi);
v = linspace(-2, 2);
[U, V] = meshgrid(u, v);
x = cos(U);
y = sin(U);
z = V;
mesh(x, y, z);
hold on;

x1 = 0.5 * cos(U);
y1 = V;
z1 = 0.5 * sin(U);
mesh(x1, y1, z1);
axis([-1 1 -1.5 1.5 -1.5 1.5]);
title('Bai 11');
xlabel('X');
ylabel('Y');
zlabel('Z');
view(-55, 40);