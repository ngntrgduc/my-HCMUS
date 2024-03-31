function I = Xapxi_tichphan(f, a, b, N)
    S = 0;
    for i = 0 : N - 1
        x1 = a + (b - a) * i / N;
        x2 = a + (b - a) * (i + 1) / N;
        S = S + (x1 + x2) * (double(subs(f, x1)) + double(subs(f, x2)));
    end;
    S = S * 1/2;
    I = S;