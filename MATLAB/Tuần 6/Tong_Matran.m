function s = Tong_Matran(A, B)
    [n, m] = size(A);
    S = zeros(n, m);
    for i=1:n
        for j=1:m
            S(i, j) = S(i, j) + A(i, j) + B(i, j);
        end
    end
    s = S;
    
    % s = A + B;
end