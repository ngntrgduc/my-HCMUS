M = input('nhap trong luong co the: ');
h = input('nhap chieu cao: ');
BMI = M / (h^2);
if (BMI < 18.5)
    fprintf('duoi chuan');
elseif BMI >= 18.5 && BMI < 25
        fprintf('chuan');
elseif BMI >= 25 && BMI < 30
        fprintf('thua can');
elseif BMI >= 30 && BMI < 40
        fprintf('beo - nen giam can');
else 
        fprintf('rat beo');
end