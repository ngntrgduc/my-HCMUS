n = input('nhap so can lap bang cuu chuong: ');
switch n
    case {2,3,4,5,6,7,8,9}
        for i=1:9
            fprintf('- %g x %g = %g\n', n, i, n * i);
        end
    otherwise
        fprintf('so can nhap phai trong khoang tu 2 den 9');
end