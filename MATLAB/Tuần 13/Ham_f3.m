function I = Ham_f3(x)
    while x > 0 && x ~= 1
        I = sqrt(x);
        fprintf('Gia tri f3(%f) = %f\n', x, I);
        x = input('Nhap gia tri x: ');
    end;