clear;

n = input('Nhap kich thuoc mang: ');
A = floor(rand(1, n) * 10);
fprintf('Mang A: ');
disp(A);

% Cau 2.1
j = 1;
for i = 1 : size(A, 2)
    if A(i) ~= 2
        B(j) = A(i);
        j = j + 1;
    end;
end;
fprintf('Mang xoa het phan tu bang 2 dung vong lap:');
disp(B);
fprintf('Mang xoa het phan tu bang 2 dung phep toan tren ma tran:');
disp(A(A~=2));

%Cau 2.2
j = 1;
for i = 1 : size(A, 2)
    if mod(A(i), 2) ~= 0 && mod(A(i), 3) ~= 0
        C(j) = A(i);
        j = j + 1;
    end;
end;
fprintf('Mang xoa het phan tu chia het 2 va 3 dung vong lap:');
disp(C);
fprintf('Mang xoa het phan tu chia het 2 va 3 dung phep toan tren ma tran:');
D = A(mod(A, 2) ~= 0);
D = D(mod(D, 3) ~= 0);
disp(D);

%Cau 2.3
j = 1;
for i = 1 : size(A, 2)
    if Prime(A(i)) == 0
        E(j) = A(i);
        j = j + 1;
    end;
end;
fprintf('Mang xoa het phan tu la so nguyen to dung vong lap: ');
disp(E);
fprintf('Mang xoa het phan tu la so nguyen to dung phep toan tren ma tran: ');
disp(A(isprime(A) == 0));