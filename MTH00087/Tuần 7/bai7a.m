%cau a
x = linspace(-2,2);
y = linspace(-2,2);
[X, Y] = meshgrid(x, y);
z = 3*X - X.^3 - 2*Y.^2 + Y.^4;

figure(1);
plot3(X, Y, z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Do thi y = 3x - x^3 - 2y^2 + y^4 dung lenh plot3');
legend('z = 3x - x^3 - 2y^2 + y^4');

figure(2);
mesh(X, Y, z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Do thi y = 3x - x^3 - 2y^2 + y^4 dung lenh mesh');
legend('z = 3x - x^3 - 2y^2 + y^4');

figure(3);
meshc(X, Y, z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Do thi y = 3x - x^3 - 2y^2 + y^4 dung lenh meshc');
legend('z = 3x - x^3 - 2y^2 + y^4');

figure(4);
meshz(X, Y, z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Do thi y = 3x - x^3 - 2y^2 + y^4 dung lenh meshz');
legend('z = 3x - x^3 - 2y^2 + y^4');

figure(5);
surf(X, Y, z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Do thi y = 3x - x^3 - 2y^2 + y^4 dung lenh surf');
legend('z = 3x - x^3 - 2y^2 + y^4');

figure(6);
surfc(X, Y, z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Do thi y = 3x - x^3 - 2y^2 + y^4 dung lenh surfc');
legend('z = 3x - x^3 - 2y^2 + y^4');

figure(7);
waterfall(X, Y, z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Do thi y = 3x - x^3 - 2y^2 + y^4 dung lenh waterfall');
legend('z = 3x - x^3 - 2y^2 + y^4');