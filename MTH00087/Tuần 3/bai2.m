thang = input('nhap thang: ');
nam = input('nhap nam: ');

if (mod(nam, 400) == 0) | ((mod(nam, 4) == 0)&(mod(nam, 100) ~= 0))
    if thang == 2
        fprintf('co 29 ngay\n');
    else 
        switch thang
            case {1,3,5,7,8,10,12}
                fprintf('co 31 ngay\n');
            otherwise 
                    fprintf('co 30 ngay\n');
        end
    end
else 
    if thang == 2
        fprintf('co 28 ngay\n');
    else 
        switch thang
            case {1,3,5,7,8,10,12}
                fprintf('co 31 ngay\n');
            otherwise 
                    fprintf('co 30 ngay\n');
        end
    end
end