A = [2 4 5/2; -3/4 2 1/4; 1/4 1/2 2];
B = [1 -1/2 3/4; 3/2 1/2 -2; 1/4 1 1/2];

% Cau a
disp('Cau a)');
disp('A^-1.B^-1 = ');
disp(A^-1 * B^-1);
disp('(AB)^-1\ = ');
disp((A * B)^-1);
disp('(BA)^-1 = ');
disp((B * A)^-1);
disp('A^-1 * B^-1 khac (AB)^-1 nhung bang (BA)^-1');

% Cau b
disp('Cau b)');
disp('(A^-1)^T = ');
disp((A^-1)');
disp('(A^T)^-1 = ');
disp((A')^-1);
disp('(A^-1)^T bang (A^T)^-1');