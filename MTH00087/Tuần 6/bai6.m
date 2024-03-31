B = [1 -1 5 -1; 1 1 -2 3; 3 -1 8 1; 1 3 -9 7];
B(2, :) = B(2, :) - B(1, :);
B(3, :) = B(3, :) - 3 * B(1, :);
B(4, :) = B(4, :) - B(1, :);
B(4, :) = B(4, :) - 2 * B(2, :);
B(3, :) = B(3, :) - B(2, :);

r = 0;
for i=1:4
    if sum(B(i,:)) ~= 0
        r = r + 1;
    end
end

fprintf('Hang cua ma tran B qua phep bien doi so cap = %g\n', r);
fprintf('Hang cua ma tran B = %g\n', rank(B));
if r == rank(B)
    fprintf('Giong voi ket qua cua Matlab\n');
else
    fprintf('Khong giong voi ket qua cua Matlab\n');
end