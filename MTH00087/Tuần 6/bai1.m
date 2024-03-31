A = [2 4 1; 6 7 2; 3 5 9];
X = A(1, :);
Y = A(2:3,:);
S_r = sum(A');
S_c = sum(A);
ptmax = max(max(A));
ptmin = min(min(A));
tongcacpt = sum(sum(A));

disp(X)
disp(Y)
disp(S_r)
disp(S_c)
disp(ptmax)
disp(ptmin)
disp(tongcacpt)