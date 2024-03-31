syms x y n;

% Cau 1
fprintf('Cau 1: ');
f = (x^2 - y^2) / (x^2 + y^2);
A = limit(subs(f, {x y}, {1/n 0}), n, inf);
B = limit(subs(f, {x y}, {1/n 1/n}), n, inf);
if A == B
    fprintf('Ham so co gioi han tai (0,0)\n');
else
    fprintf('Ham so khong co gioi han tai (0,0)\n');
end;

% Cau 2
fprintf('Cau 2: ');
f = x^2 / (x^2 + y^2);
A = limit(subs(f, {x y}, {1/n 0}), n, inf);
B = limit(subs(f, {x y}, {1/n 1/n}), n, inf);
if A == B
    fprintf('Ham so co gioi han tai (0,0)\n');
else
    fprintf('Ham so khong co gioi han tai (0,0)\n');
end;

% Cau 3
fprintf('Cau 3: ');
f = (x*y + x^2) / (x^2 + y^2);
A = limit(subs(f, {x y}, {1/n 0}), n, inf);
B = limit(subs(f, {x y}, {1/n 1/n}), n, inf);
if A == B
    fprintf('Ham so co gioi han tai (0,0)\n');
else
    fprintf('Ham so khong co gioi han tai (0,0)\n');
end;

% Cau 4
fprintf('Cau 4: ');
f = (x^4 + y^4) / (x^2 + y^2);
A = limit(subs(f, {x y}, {1/n 0}), n, inf);
B = limit(subs(f, {x y}, {1/n 1/n}), n, inf);
if A == B
    fprintf('Ham so co gioi han tai (0,0)\n');
else
    fprintf('Ham so khong co gioi han tai (0,0)\n');
end;