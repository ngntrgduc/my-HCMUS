M = [1 2 3; 2 1 5; 4 6 4; 2 3 2];
fprintf('Ma tran M luc dau:\n');
disp(M);
for i = 1 : size(M, 1) - 1
    for j = i + 1 : size(M, 1)
        if M(j, 2) > M(i, 2)
            t = M(j, :);
            M(j, :) = M(i, :);
            M(i, :) = t;
        end;
    end;
end;
fprintf('Ma tran M luc sau:\n');
disp(M);