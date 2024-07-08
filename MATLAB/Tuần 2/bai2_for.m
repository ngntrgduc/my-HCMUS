result = 0;
for k=5:20
    result = result + (k^2) / (k-1);
end
fprintf('Ket qua la %g\n', result);