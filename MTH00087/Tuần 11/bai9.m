syms n r;

disp('Cau a:');
f = n * (r ^ n);
for i = -1 : 2
    g = symsum(subs(f, r, i), n, 1, inf);
    if g == Inf || isnan(g)
        fprintf('Chuoi n * (r ^ n) voi r = %g khong hoi tu\n', i);
    else
        fprintf('Chuoi n * (r ^ n) voi r = %g  hoi tu\n', i);
    end
end

disp('Cau b:');
f = 1 / n ^ r;
for i = -1 : 2
    g = symsum(subs(f, r, i), n, 1, inf);
    if g == Inf || isnan(g)
        fprintf('Chuoi 1 / n ^ r voi r = %g khong hoi tu\n', i);
    else
        fprintf('Chuoi 1 / n ^ r voi r = %g  hoi tu\n', i);
    end
end