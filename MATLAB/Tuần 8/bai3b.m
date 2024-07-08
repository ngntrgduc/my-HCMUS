% Cau b)
x = linspace(-2, 2);
y = linspace(-2, 2);
[X, Y] = meshgrid(x, y);
z = 0.5 * abs(X) + 0.5 * abs(Y);

figure(1);
plot3(X, Y, z);
title('Do thi z = 0.5|x|+0.5|y| su dung ham plot3');
xlabel('X');
ylabel('Y');
zlabel('Z');
legend('z = 0.5|x|+0.5|y|');

figure(2);
mesh(X, Y, z);
title('Do thi z = 0.5|x|+0.5|y| su dung ham mesh');
xlabel('X');
ylabel('Y');
zlabel('Z');
legend('z = 0.5|x|+0.5|y|');

figure(3);
meshc(X, Y, z);
title('Do thi z = 0.5|x|+0.5|y| su dung ham meshc');
xlabel('X');
ylabel('Y');
zlabel('Z');
legend('z = 0.5|x|+0.5|y|');

figure(4);
surf(X, Y, z);
title('Do thi z = 0.5|x|+0.5|y| su dung ham surf');
xlabel('X');
ylabel('Y');
zlabel('Z');
legend('z = 0.5|x|+0.5|y|');

figure(5);
surfc(X, Y, z);
title('Do thi z = 0.5|x|+0.5|y| su dung ham surfc');
xlabel('X');
ylabel('Y');
zlabel('Z');
legend('z = 0.5|x|+0.5|y|');