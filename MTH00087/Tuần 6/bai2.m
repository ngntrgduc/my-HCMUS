A = floor(10 * rand(4, 4));
A = A + 15;

A = A.^2

A(1:2, :) = A(1:2, :) + 10;
A(:, [1,4]) = A(:, [1,4]) + 10;

ones(4,4)./A;

for i=1:4
    for j=1:4
        A(i, j) = sqrt(A(i, j)); 
    end
end