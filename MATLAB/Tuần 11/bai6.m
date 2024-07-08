syms x;

disp('Cau a:');
f1 = x * sin(1/x);
f2 = 0;
if limit(f1, x, 0, 'Left') == limit(f1, x, 0, 'Right') && limit(f1, x, 0, 'Left') == f2
    disp('df(0) ton tai');
else
    disp('df(0) khong ton tai');
end

disp('Cau b:');
f1 = x ^ 2 * sin(1/x);
f2 = 0;
if limit(f1, x, 0, 'Left') == limit(f1, x, 0, 'Right') && limit(f1, x, 0, 'Left') == f2
    disp('df(0) ton tai');
else
    disp('df(0) khong ton tai');
end