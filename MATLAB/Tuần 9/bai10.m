% Cau a)
A = round(rand(100) * 100 - 50);
while det(A) == 0
    A = round(rand(100) * 100 - 50);
end;
disp(A);
B = A;

% Cau b)
I = eye(size(A, 1));
for i = 1 : size(A, 1)
    for j = 1 : size(A, 1)
        if i == j
            I(j, :) = I(j, :) / A(j, i);
            A(j, :) = A(j, :) / A(j, i);
        else
            I(j, :) = I(j, :) + (-A(j, i)/A(i, i)) * I(i, :);
            A(j, :) = A(j, :) + (-A(j, i)/A(i, i)) * A(i, :);
        end;
    end;
end;
disp('Ma tran nghich dao cua A bang bien doi so cap');
disp(I);

% Cau c)
C = inv(B);
disp('Ma tran nghich dao cua A bang ham inv');
disp(C);