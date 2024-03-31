syms x;
disp('a)');
f = x^3 - x^2 -6*x + 2;
disp(diff(f));
disp(diff(f, 2));
disp(diff(f, 3));

disp('b)');
f = x^(1/3) - (1/3)*x;
disp(diff(f));
disp(diff(f, 2));
disp(diff(f, 3));

disp('c)');
f = cos(2*x);
disp(diff(f));
disp(diff(f, 2));
disp(diff(f, 3));

disp('d)');
f = x/(x^3 - 1);
disp(diff(f));
disp(diff(f, 2));
disp(diff(f, 3));

disp('e)');
f = sqrt(x) - x^(1/4);
disp(diff(f));
disp(diff(f, 2));
disp(diff(f, 3));