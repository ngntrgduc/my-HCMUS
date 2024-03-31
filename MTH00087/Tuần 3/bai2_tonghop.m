v = input('Nhap vecto: ');
tongchan = 0;
tongle = 0;
tongntchan = 0;
tongntle = 0;
tongchinhphuong = 0;

for i=1:length(v)
    % kiem tra nguyen to
    if isprime(v(i))
        if mod(v(i), 2) == 0
            tongntchan = tongntchan + v(i);
        else
            tongntle = tongntle + v(i);
            tongle = tongle + v(i);
        end
    else 
        if mod(v(i), 2) == 0
            tongchan = tongchan + v(i);
        else
            tongle = tongle + v(i);
        end
    end
    % kiem tra chinh phuong
    if floor((sqrt(v(i))))*floor((sqrt(v(i)))) == v(i)
        tongchinhphuong = tongchinhphuong + v(i);
    end
end

fprintf('tong so chan la %g\n', tongchan);
fprintf('tong so le la %g\n', tongle);
fprintf('tong so nguyen to chan la %g\n', tongntchan);
fprintf('tong so nguyen to le la %g\n', tongntle);
fprintf('tong so chinh phuong la %g\n', tongchinhphuong);        