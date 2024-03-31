syms x;

disp('Cau a:');
f = log(abs(x - 2));
a = 2;
if limit(f, x, a, 'Left') == limit(f, x, a, 'Right')
    fprintf('Ham so lien tuc tai a = %g\n', a);
else
    fprintf('Ham so khong lien tuc tai a = %g\n', a);
end
figure(1);
ezplot(f);
title('Cau a');

disp('Cau b:');
f1 = exp(x);
f2 = x^2;
a = 0;
if limit(f1, x, a, 'Left') == limit(f2, x, a, 'Right')
    fprintf('Ham so lien tuc tai a = %g\n', a);
else
    fprintf('Ham so khong lien tuc tai a = %g\n', a);
end
figure(2);
ezplot(f1);
hold on;
ezplot(f2);
title('Cau b');

disp('Cau c:');
f1 = (x^2 - x) / (x^2 - 1);
f2 = 1;
a = 1;
if limit(f1, x, a, 'Left') == limit(f1, x, a, 'Right') && limit(f1, x, a, 'Left') == f2
    fprintf('Ham so lien tuc tai a = %g\n', a);
else
    fprintf('Ham so khong lien tuc tai a = %g\n', a);
end
figure(3);
ezplot(f1);
hold on;
ezplot('1');
title('Cau c');

disp('Cau d:');
f1 = cos(pi * x);
f2 = 0;
f3 = 1 - x^2;
a = 0;
if limit(f1, x, a, 'Left') == limit(f3, x, a, 'Right') && limit(f1, x, a, 'Left') == f2
    fprintf('Ham so lien tuc tai a = %g\n', a);
else
    fprintf('Ham so khong lien tuc tai a = %g\n', a);
end
figure(4);
ezplot(f1);
hold on;
ezplot('0');
hold on;
ezplot(f3);
title('Cau d');