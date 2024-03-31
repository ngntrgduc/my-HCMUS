n = input('Nhap n: ');
result = 1;
if (n == 0)
    result = 1;
else 
    for i=1:n
        result = result * i;
    end
end
fprintf('Gia thua cua n la %g\n', result);