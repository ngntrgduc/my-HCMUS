syms x y;
f = x - 3 * y^2;

%Tinh xap xi bang ham int cua MATLAB
int_matlab = int(int(f, x, 0, 2), y, 1, 2);

% Tinh xap xi bang cong thuc trung diem
m = 40;
n = 40;
dx = double((2 - 0) / m);
dy = double((2 - 1) / n);
dA = double(dx * dy);
xap_xi = 0;
for i = 1:1:m - 1
    for j = 1:1:n - 1
        dxi = double(((0 + (i-1)*dx) + (0 + i*dx)) / 2);
        dyj = double(((1 + (j-1)*dy) + (1 + j*dy)) / 2);
        xap_xi = xap_xi + double(subs(f, [x y], [dxi dyj])) * dA;
    end;
end;

fprintf('Ham xap xi bang cong thuc trung diem: ');
disp(xap_xi);
fprintf('Ham int cua MATLAB: ');
disp(int_matlab);
if abs(xap_xi - int_matlab) < 1
    disp('Ham xap xi gan dung voi ham int cua MATLAB');
else
    disp('Ham xap xi khong gan dung voi ham int cua MATLAB');
end;