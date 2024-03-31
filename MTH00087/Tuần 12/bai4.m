syms n;

disp('Cau a:');
figure(1);
n1 = linspace(1, 1000, 1000);
an = (-1)^n * (n+1) / n;
plot(n1, subs(an, n1));
title('Cau a');
fprintf('Day nay khong hoi tu\n');

disp('Cau b:');
figure(2);
n1 = linspace(1, 1000, 1000);
an = sin(n) / sqrt(n);
plot(n1, subs(an, n1));
title('Cau b');
fprintf('Day nay hoi tu ve %.0f\n', double(limit(an, n, inf)));