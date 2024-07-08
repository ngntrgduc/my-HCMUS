% Cau a)
x1 = linspace(-5, 5, 500);
f1 = x1 .* sin(x1);
g1 = x1 .* cos(x1);
plot(x1, f1, x1, g1);
title('Do thi cau 3a');
legend('f(x)', 'g(x)');

syms x;
f = x * sin(x);
g = x * cos(x);
y = solve(f == g, x);

text(0, 0, '\circ', 'Color', 'r')

for k=-5:1:5
    t = pi * (k - 7/4);
    if subs(f, t) == subs(g, t)
        text(t, t * sin(t), '\circ', 'Color', 'r')
    end
end