% Cau c)
x = linspace(-10, 10);
y = linspace(-10, 10);
[X, Y] = meshgrid(x, y);
R = sqrt(X.^2 + Y.^2);
z = sin(R)./R;

figure(1);
plot3(X, Y, z);
title('Do thi z = sin(R)/R su dung ham plot3');
xlabel('X');
ylabel('Y');
zlabel('Z');
legend('z = sin(R)/R');

figure(2);
mesh(X, Y, z);
title('Do thi z = sin(R)/R su dung ham mesh');
xlabel('X');
ylabel('Y');
zlabel('Z');
legend('z = sin(R)/R');

figure(3);
meshc(X, Y, z);
title('Do thi z = sin(R)/R su dung ham meshc');
xlabel('X');
ylabel('Y');
zlabel('Z');
legend('z = sin(R)/R');

figure(4);
surf(X, Y, z);
title('Do thi z = sin(R)/R su dung ham surf');
xlabel('X');
ylabel('Y');
zlabel('Z');
legend('z = sin(R)/R');

figure(5);
surfc(X, Y, z);
title('Do thi z = sin(R)/R su dung ham surfc');
xlabel('X');
ylabel('Y');
zlabel('Z');
legend('z = sin(R)/R');