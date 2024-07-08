result = 0;
for i=1:49
    if mod(i, 3) == 0
        result = result + i;
    end
end
fprintf('Cach 1, Ket qua la %g\n', result);
result = 0;
n = floor(50/3);
for i=1:n
    result = result + 3*i;
end
fprintf('Cach 2, Ket qua la %g\n', result);