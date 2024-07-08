function P = DaThuc_Taylor(f, n, x0)
syms x;
P = subs(f, x0);
for k = 1 : n
    P = P + (subs(diff(f, k), x0) * (x - x0)^k) / factorial(k);
end;