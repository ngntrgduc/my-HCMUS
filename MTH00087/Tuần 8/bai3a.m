% Cau a)
x = linspace(-4, 4);
y = linspace(-4, 4);
[X, Y] = meshgrid(x, y);
z = X.^2.*Y.*exp(-X.^2 - Y.^2);

figure(1);
plot3(X, Y, z);
title('Do thi z(x,y) = x^2ye^{-x^2-y^2} su dung ham plot3');
xlabel('X');
ylabel('Y');
zlabel('Z');
legend('z(x,y) = x^2ye^{-x^2-y^2}');

figure(2);
mesh(X, Y, z);
title('Do thi z(x,y) = x^2ye^{-x^2-y^2} su dung ham mesh');
xlabel('X');
ylabel('Y');
zlabel('Z');
legend('z(x,y) = x^2ye^{-x^2-y^2}');

figure(3);
meshc(X, Y, z);
title('Do thi z(x,y) = x^2ye^{-x^2-y^2} su dung ham meshc');
xlabel('X');
ylabel('Y');
zlabel('Z');
legend('z(x,y) = x^2ye^{-x^2-y^2}');

figure(4);
surf(X, Y, z);
title('Do thi z(x,y) = x^2ye^{-x^2-y^2} su dung ham surf');
xlabel('X');
ylabel('Y');
zlabel('Z');
legend('z(x,y) = x^2ye^{-x^2-y^2}');

figure(5);
surfc(X, Y, z);
title('Do thi z(x,y) = x^2ye^{-x^2-y^2} su dung ham surfc');
xlabel('X');
ylabel('Y');
zlabel('Z');
legend('z(x,y) = x^2ye^{-x^2-y^2}');