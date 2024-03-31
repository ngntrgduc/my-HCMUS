function I = Ham_f1(x)
    while x < 1
        I = log(1 / (1 - x));
        fprintf('Gia tri f1(%f) = %f\n', x, I);
        x = input('Nhap gia tri x: ');
    end;