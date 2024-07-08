% Cau a
figure(1);
x = -5:5;
f = abs(x.^2 + 3*x);
g = x.^3 - x - 2;
subplot(2,1,1);
plot(x, f);
title('Do thi y = |x^2 + 3x|');
xlabel('x');
ylabel('y');
legend('|x^2 + 3*x|');
subplot(2,1,2)
plot(x, g);
title('Do thi y = x^3 - x - 2');
xlabel('x');
ylabel('y');
legend('x^3 - x - 2');

% Cau b
figure(2);
f = x.^2;
g = sqrt(x);
subplot(1,2,1);
plot(x, f);
title('Do thi y = x^2');
xlabel('x');
ylabel('y');
legend('x^2');
subplot(1,2,2)
plot(x, g);
title('Do thi y = sqrt(x)');
xlabel('x');
ylabel('y');
legend('sqrt(x)');

% Cau c
figure(3);
subplot(2,2,1);
plot(x, exp(x));
title('Do thi cau b');
title('Do thi y = e^x');
xlabel('x');
ylabel('y');
legend('e^x');

subplot(2,2,2);
plot(x, log(x));
title('Do thi y = ln(x)');
xlabel('x');
ylabel('y');
legend('ln(x)');

subplot(2,2,3);
ezplot('sin(x)');
title('Do thi y = sin(x)');
xlabel('x');
ylabel('y');
legend('sin(x)');

subplot(2,2,4);
ezplot('cos(x)');
title('Do thi y = cos(x)');
xlabel('x');
ylabel('y');
legend('cos(x)');