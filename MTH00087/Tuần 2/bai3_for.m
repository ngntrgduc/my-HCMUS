n = input('Nhap n: ');
s_n = 0;
for k=1:n
    s_n = s_n + k;
end
result = 0;
for i=1:10
    result = result + s_n;
end
fprintf('Ket qua la %g\n', result);