t = linspace(0, 6*pi, 200);
x = sqrt(t).*sin(2*t);
y = sqrt(t).*cos(2*t);
z = 0.5 * t;
plot3(x, y, z);
title('Bai 8');
xlabel('X');
ylabel('Y');
zlabel('Z');