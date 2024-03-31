A = [1 2 3 5 4; 5 6 8 9 11; 3 1 2 5 7; 9 2 5 6 12; 2 5 7 7 14];
B = [11 12 20 30 32; 1 2 36 3 5; 31 22 25 9 11; 5 6 7 10 12; 15 32 24 34 38];
S = zeros(5,5);
for i=1:5
    for j=1:5
        S(i, j) = S(i, j) + A(i, j) + B(i, j);
    end
end
disp('Ma tran A + B dung lenh for =');
disp(S);
disp('Ma tran A + B =');
disp(A + B);
if A + B == S
    fprintf('Giong voi ket qua cua Matlab\n');
else
    fprintf('Khong giong voi ket qua cua Matlab\n');
end

P = A * B;
X = zeros(5,5);
for i=1:5
    s = 0;
    for j=1:5  
        for k=1:5   
            X(i, j) = X(i, j) + A(i, k) * B(k, j);
        end
    end
end
disp('Ma tran A * B dung lenh for = ');
disp(X);
disp('Ma tran A * B = ');
disp(A * B);
if P == X
    fprintf('Giong voi ket qua cua Matlab\n');
else
    fprintf('Khong giong voi ket qua cua Matlab\n');
end