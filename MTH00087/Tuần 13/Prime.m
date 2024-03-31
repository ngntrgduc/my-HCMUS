function I = Prime(a)
b = 1;
if a <= 1
    b = 0;
else
    for i = 2 : a
        if mod(a, i) == 0
            b = 0;
        end;
    end;
end;
I = b;