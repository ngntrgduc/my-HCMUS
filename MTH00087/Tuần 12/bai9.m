syms t;
s = t^3 - 3 * t;
v = diff(s);
a = diff(v);

disp('Cau a:');
fprintf('Van toc cua chuyen dong: ');
disp(v);
fprintf('Gia toc cua chuyen dong: ');
disp(a);

disp('Cau b:');
fprintf('Gia toc cua chuyen dong sau 2 giay: %0.2f (m/s^2)\n', double(subs(a, 2)));

disp('Cau c:');
I = solve(v == 0, t);
I = double(I(I > 0));
fprintf('Gia toc cua chuyen dong khi van toc bang 0: %.2f (m/s^2)\n', double(subs(a, I)));