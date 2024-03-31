function [I] = Fahrenheit()
    n = input('Nhap nhiet do Fahrenheit: ');
    while isempty(n) == 0
        C = (5/9) * (n-32);
        fprintf('Nhiet do Celcius tuong ung: %f\n', C);
        n = input('Nhap nhiet do Farenheit: ');
    end;