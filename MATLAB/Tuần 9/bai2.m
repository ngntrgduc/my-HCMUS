% Cau 2.1
disp('Cau 2.1)');
A = [1 -2 3 9; -1 3 0 -4; 2 -5 5 17];
B = rref(A);
x = B(:, 4);
disp('Nghiem cua he phuong trinh');
fprintf('x = %0.0f    y = %0.0f    z = %0.0f\n', x(1), x(2), x(3));

% Cau 2.2
disp('Cau 2.2)');
A = [3 3 4; 1 1 4; 2 -5 4];
B = [2; -2; 3];
x1 = A \ B;
disp('Nghiem cua he phuong trinh bang cong thuc AX = B');
fprintf('x = %0.3f    y = %0.3f    z = %0.3f\n', x1(1), x1(2), x1(3));
C = rref([A B]);
x2 = C(:, 4);
disp('Nghiem cua he phuong trinh bang ham rref');
fprintf('x = %0.3f    y = %0.3f    z = %0.3f\n', x2(1), x2(2), x2(3));