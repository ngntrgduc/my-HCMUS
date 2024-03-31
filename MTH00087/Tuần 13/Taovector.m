function [V] = Taovector(a, b)
j = 1;
if a < b
    for i = a : 1 : b
        I(j) = i;
        j = j + 1;
    end;
elseif a > b
    for i = a : -1 : b
        I(j) = i;
        j = j + 1;
    end;
else
    I = a;
end;
V = I;