A = round(rand(1, 100000) * 100);
fprintf('Dung phep toan tren ma tran: ');
tic
C = A(mod(A, 3) == 0);
toc
fprintf('Dung lenh for va if: ');
k = 1;
tic
for i = 1 : size(A, 1)
    for j = 1 : size(A, 2)
        if mod(A(i, j), 3) == 0
            B(k) = A(i, j);
            k = k + 1;
        end;
    end;
end;
toc