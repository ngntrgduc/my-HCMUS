syms n;

disp('Cau a:');
a = sqrt(n - 3);
for i = 0 : 4
    fprintf('%f\t', double(subs(a, i)));
end;
fprintf('\nGioi han cua ham so la: %g\n\n', limit(a, n, inf));

disp('Cau b:');
a = (n + 1) / (3 * n - 1);
for i = 0 : 4
    fprintf('%f\t', double(subs(a, i)));
end;
fprintf('\nGioi han cua ham so la: %g\n\n', limit(a, n, inf));

disp('Cau c:');
a = cos(n * pi / 6);
for i = 0 : 4
    fprintf('%f\t', double(subs(a, i)));
end;
fprintf('\nGioi han cua ham so la: %g\n\n', limit(a, n, inf));

disp('Cau d:');
a = 3;
for i = 0 : 4
    fprintf('%f\t', a);
    a = 2 * a - 1;
end;
fprintf('\nGioi han cua ham so la: ');
if (2 * a - 1) > a
    disp(Inf);
end;