% Cau a)
disp('Cau a)');
A =[1 3 3 -2; 2 -1 -2 -3; 3 2 -1 2; 2 -3 2 1];
b = [6; 4; 4; 8];
x = zeros(size(A, 1), 1);
for i = 1 : size(A, 1)
    A1 = A;
    A1(:, [i]) = b;
    x(i) = det(A1) / det(A);
end;
fprintf('Nghiem cua he phuong trinh a la\n');
for i = 1 : size(A, 1)
    if x(i) == -0
        x(i) = 0;
    end;
    fprintf('x%0.0f = %2.0f\n', i, x(i));
end;

% Cau b)
disp('Cau b)');
A =[1 3 5 -4 0; 1 3 2 -2 1; 1 -2 1 -1 -1; 1 -4 1 1 -1; 1 2 1 -4 1];
b = [1; -1; 3; 3; -1];
x = zeros(size(A, 1), 1);
for i = 1 : size(A, 1)
    A1 = A;
    A1(:, [i]) = b;
    x(i) = det(A1) / det(A);
end;
fprintf('Nghiem cua he phuong trinh b la\n');
for i = 1 : size(A, 1)
    if x(i) == -0
        x(i) = 0;
    end;
            fprintf('x%0.0f = %2.0f\n', i, x(i));
end;