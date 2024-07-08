syms x;
x0 = 0;
n = 6;

f = exp(x);
disp(f);
p = DaThuc_Taylor(f, n, x0);
t = taylor(f, x, x0, 'order', n);
if subs(p, x0) - subs(t, x0) < 10^-6
    disp('Ham taylor gan giong ham MATLAB');
else
    disp('Ham taylor khong giong ham MATLAB');
end;

disp(' ');
f = cos(x);
disp(f);
p = DaThuc_Taylor(f, n, x0);
t = taylor(f, x, x0, 'order', n);
if subs(p, x0) - subs(t, x0) < 10^-6
    disp('Ham taylor gan giong ham MATLAB');
else
    disp('Ham taylor khong giong ham MATLAB');
end;

disp(' ');
f = sin(x);
disp(f);
p = DaThuc_Taylor(f, n, x0);
t = taylor(f, x, x0, 'order', n);
if subs(p, x0) - subs(t, x0) < 10^-6
    disp('Ham taylor gan giong ham MATLAB');
else
    disp('Ham taylor khong giong ham MATLAB');
end;

disp(' ');
f = log(x);
disp(f);
p = DaThuc_Taylor(f, n, 1);
t = taylor(f, x, 1, 'order', n);
if subs(p, 1) - subs(t, 1) < 10^-6
    disp('Ham taylor gan giong ham MATLAB');
else
    disp('Ham taylor khong giong ham MATLAB');
end;