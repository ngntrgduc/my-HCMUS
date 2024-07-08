A = [1 2 3; 5 6 9; 10 11 15];
L = zeros(3,3);
U = zeros(3,3);
D = zeros(3,3);
for i=1:3
    for j=i:3
        U(i, j) = U(i, j) + A(i, j);
    end
end
disp(U)

for i=1:3
    for j=1:i
        L(i, j) = L(i, j) + A(i, j);
    end
end
disp(L)

for i=1:3
    for j=1:3
        if i == j
            D(i, j) = D(i, j) + A(i, j);
        end
    end
end
disp(D)