syms x;
P(1) = sym(1);
P(2) = x;
for i = 3 : 6
    P(i) = ((2*(i-1)+1) * x * P(i-1) - (i-1)* P(i-2)) / (i);
end;
for i = 1 : 6
    ezplot(P(i));
    hold on;
end;
title('Cau 1');