function I = Ham_f2(x)
    while x >= 0
        I = sqrt(x);
        fprintf('Gia tri f2(%f) = %f\n', x, I);
        x = input('Nhap gia tri x: ');
    end;