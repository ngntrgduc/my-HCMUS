syms x k;

disp('Cau a:');
f = 1 / (1 + exp(1/x));
figure(1);
ezplot(f);
X = 0;
for i = -5 : 5
    if limit(f, i) == Inf
        X = i;
    end
end
fprintf('Diem bat lien tuc cua ham so nay la: %g\n', X);

disp('Cau b:');
f = log(tan(x) ^ 2);
figure(2);
ezplot(f);
X = 0;
for i = -5 : 5
    if abs(limit(f, i)) == Inf
        X = i + k * pi;
    end
end
for j = -3 : 3
    fprintf('Diem bat lien tuc cua ham so nay la: %g\n', double(subs(X, j)));
end