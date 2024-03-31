function [x] = He_PT(A, b)
if size(A, 1) ~= size(A, 2) || size(A, 1) ~= size(b, 1) || det(A) ~= 0
    x = 0;
    disp('He phuong trinh khong giai duoc');
else
    x = zeros(size(A, 1));
    for i = 1 : size(A, 1)
        A1 = A;
        A1(:, [i]) = b;
        x(i) = det(A1) / det(A);
    end;
    for i = 1 : size(A, 1)
        if x(i) == -0
            x(i) = 0;
        end;
        if round(x(i)) == round(x(i), 2)
            if x(i) >= 0
                fprintf('x%0.0f = %2.0f\n', i, x(i));
            else
                fprintf('x%0.0f = %0.0f\n', i, x(i));
            end;
        else
            if x(i) >= 0
                fprintf('x%0.0f = %6.3f\n', i, x(i));
            else
                fprintf('x%0.0f = %0.3f\n', i, x(i));
            end;
        end;
    end;
end;