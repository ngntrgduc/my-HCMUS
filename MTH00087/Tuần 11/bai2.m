syms x;

disp('Cau a:');
f = x^6 + x^4 - 3 * x^3 - 16 * x;
fprintf('Dao ham bac 1: ');
disp(diff(f, 1));
fprintf('Dao ham bac 2: ');
disp(diff(f, 2));

disp('Cau b:');
f = sqrt(x) + x ^ (1 / 3) + x * sqrt(x);
fprintf('Dao ham bac 1: ');
disp(diff(f, 1));
fprintf('Dao ham bac 2: ');
disp(diff(f, 2));

disp('Cau c:');
f = 2 * x - 5 * x^(3 / 4);
fprintf('Dao ham bac 1: ');
disp(diff(f, 1));
fprintf('Dao ham bac 2: ');
disp(diff(f, 2));

disp('Cau d:');
f = sin(x) + log(x) + 1 / (x ^ 2);
fprintf('Dao ham bac 1: ');
disp(diff(f, 1));
fprintf('Dao ham bac 2: ');
disp(diff(f, 2));