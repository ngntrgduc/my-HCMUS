%cau c
x = linspace(-2,2);
y = linspace(-2,2);
[X, Y] = meshgrid(x, y);
z = exp(X) + Y.^4 - X.^3 + 4 * cos(pi * Y);

figure(1);
plot3(X, Y, z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Do thi y = e^x + y^4 - x^3 + 4cos(\piy) dung lenh plot3');
legend('z = e^x + y^4 - x^3 + 4cos(\piy)');
 
figure(2);
mesh(X, Y, z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Do thi y = e^x + y^4 - x^3 + 4cos(\piy) dung lenh mesh');
legend('z = e^x + y^4 - x^3 + 4cos(\piy)');
 
figure(3);
meshc(X, Y, z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Do thi y = e^x + y^4 - x^3 + 4cos(\piy) dung lenh meshc');
legend('z = e^x + y^4 - x^3 + 4cos(\piy)');
 
figure(4);
meshz(X, Y, z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Do thi y = e^x + y^4 - x^3 + 4cos(\piy) dung lenh meshz');
legend('z = e^x + y^4 - x^3 + 4cos(\piy)');
 
figure(5);
surf(X, Y, z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Do thi y = e^x + y^4 - x^3 + 4cos(\piy) dung lenh surf');
legend('z = e^x + y^4 - x^3 + 4cos(\piy)');
 
figure(6);
surfc(X, Y, z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Do thi y = e^x + y^4 - x^3 + 4cos(\piy) dung lenh surfc');
legend('z = e^x + y^4 - x^3 + 4cos(\piy)');
 
figure(7);
waterfall(X, Y, z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Do thi y = e^x + y^4 - x^3 + 4cos(\piy) dung lenh waterfall');
legend('z = e^x + y^4 - x^3 + 4cos(\piy)');