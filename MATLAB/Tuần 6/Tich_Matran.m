function p = Tich_Matran(A, B)
    sa = size(A);
    sb = size(B);
    X = zeros(sa(1), sb(2));
    for i=1:sa(1)
        s = 0;
        for j=1:sb(2)  
            for k=1:sb(1)   
                X(i, j) = X(i, j) + A(i, k) * B(k, j);
            end
        end
    end
    p = X;
    
    % p = A * B;
end