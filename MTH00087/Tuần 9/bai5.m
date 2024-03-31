A = [4 -2; 3 -5];
b = [10; 11];

x = zeros(2, 1);
A1 = A;
A1(:, [1]) = b;
x(1) = det(A1) / det(A);
A2 = A;
A2(:, [2]) = b;
x(2) = det(A2) / det(A);
disp('Nghiem cua he phuong trinh 1 = ');
disp(x');

A = [3 3 4; 1 1 4; 2 -5 4];
b = [2; -2; 3];
x = zeros(size(A, 2), 1);
for i = 1 : size(A, 2)
    A1 = A;
    A1(:, [i]) = b;
    x(i) = det(A1) / det(A);
end;
disp('Nghiem cua he phuong trinh 2 = ');
disp(x');