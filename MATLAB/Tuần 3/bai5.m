L = input('nhap chieu dai: ');
donvi = input('nhap don vi can doi: ');

switch donvi
    case {'dm'}
        fprintf('don vi sau khi doi la %g dm', L * 10);
    case {'cm'}
        fprintf('don vi sau khi doi la %g cm', L * 100);
    case {'mm'}
        fprintf('don vi sau khi doi la %g mm', L * 1000);
    case {'dam'}
        fprintf('don vi sau khi doi la %g dam', L / 10);
    case {'hm'}
        fprintf('don vi sau khi doi la %g hm', L / 100);
    case {'km'}
        fprintf('don vi sau khi doi la %g km', L / 1000);
    otherwise
        fprintf('don vi khong ton tai');
end