n = input('Nhap n: ');
while (n ~= 1)
    if mod(n, 2) == 0
       n = n / 2; 
    else
        n = n + 1;
    end
end
fprintf('Ket qua la : %g\n', n);