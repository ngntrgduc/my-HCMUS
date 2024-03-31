x = linspace(0,4);
subplot(2,2,1);
plot(x, x);
title('Do thi y = x');
xlabel('x');
ylabel('y');
legend('x');

subplot(2,2,2);
plot(x, x.^3);
title('Do thi y = x^3');
xlabel('x');
ylabel('y');
legend('x^3');

subplot(2,2,3);
plot(x, exp(x));
title('Do thi y = e^x');
xlabel('x');
ylabel('y');
legend('e^x');

subplot(2,2,4);
plot(x, exp(x.^2));
title('Do thi y = e^{x^2}');
xlabel('x');
ylabel('y');
legend('e^{x^2}');