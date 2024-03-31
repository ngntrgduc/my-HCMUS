%cau b
x = linspace(-2,2);
y = linspace(-2,2);
[X, Y] = meshgrid(x, y);
z = sin(pi*X) + sin(pi*X) + sin(pi*X+pi*Y);

figure(1);
plot3(X, Y, z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Do thi y = sin(\pi.x) + sin(\pi.x) + sin([\pi.x+\pi.y]) dung lenh plot3');
legend('z = sin(\pi.x) + sin(\pi.x) + sin([\pi.x+\pi.y])');

figure(2);
mesh(X, Y, z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Do thi y = sin(\pi.x) + sin(\pi.x) + sin([\pi.x+\pi.y]) dung lenh mesh');
legend('z = sin(\pi.x) + sin(\pi.x) + sin([\pi.x+\pi.y])');

figure(3);
meshc(X, Y, z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Do thi y = sin(\pi.x) + sin(\pi.x) + sin([\pi.x+\pi.y]) dung lenh meshc');
legend('z = sin(\pi.x) + sin(\pi.x) + sin([\pi.x+\pi.y])');

figure(4);
meshz(X, Y, z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Do thi y = sin(\pi.x) + sin(\pi.x) + sin([\pi.x+\pi.y]) dung lenh meshz');
legend('z = sin(\pi.x) + sin(\pi.x) + sin([\pi.x+\pi.y])');

figure(5);
surf(X, Y, z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Do thi y = sin(\pi.x) + sin(\pi.x) + sin([\pi.x+\pi.y]) dung lenh surf');
legend('z = sin(\pi.x) + sin(\pi.x) + sin([\pi.x+\pi.y])');

figure(6);
surfc(X, Y, z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Do thi y = sin(\pi.x) + sin(\pi.x) + sin([\pi.x+\pi.y]) dung lenh surfc');
legend('z = sin(\pi.x) + sin(\pi.x) + sin([\pi.x+\pi.y])');

figure(7);
waterfall(X, Y, z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Do thi y = sin(\pi.x) + sin(\pi.x) + sin([\pi.x+\pi.y]) dung lenh waterfall');
legend('z = sin(\pi.x) + sin(\pi.x) + sin([\pi.x+\pi.y])');