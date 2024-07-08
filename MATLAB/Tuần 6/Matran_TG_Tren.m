function A_U = Matran_TG_Tren(A)
    [n, m] = size(A);
    U = zeros(n, n);
    for i=1:n
        for j=i:n
            U(i, j) = U(i, j) + A(i, j);
        end
    end
    A_U = U;
end