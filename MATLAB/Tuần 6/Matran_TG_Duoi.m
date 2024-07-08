function A_L = Matran_TG_Duoi(A)
    [n, m] = size(A);
    L = zeros(n, n);
    for i=1:n
        for j=1:i
            L(i, j) = L(i, j) + A(i, j);
        end
    end
    A_L = L;
end