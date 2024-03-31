function I = dudoan()
    ans = 'y';
    while lower(ans) == 'y'
        fprintf('Gia tri xuc xac: %g\n', round(rand(1) * 5 + 1));
        ans = input('Choi tiep hay khong (y/n): ', 's');
    end;