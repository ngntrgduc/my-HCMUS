function df = Xapxi_daoham(f, n, x0, h)
    syms x;
    if n == 1
        df = double((subs(f, x0 + h) - subs(f, x0 - h)) / (2 * h));
    else
        df = double((subs(f, x0 + h) - 2 * subs(f, x0) + subs(f, x0 - h)) / (h ^ 2));
    end;