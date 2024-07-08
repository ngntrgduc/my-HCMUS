n = input('Nhap n: ');
result = 0;
k = 1;
while (k <= n)
    result = result + 1/k;
    k = k + 1;
end
fprintf('Ket qua la: %.5g\n', result);
