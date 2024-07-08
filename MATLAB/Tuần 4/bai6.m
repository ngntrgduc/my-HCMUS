n = input('Nhap n: ');
donvi = mod(n, 10);
chuc = (n - donvi)/10;
switch chuc
    case {0}
        kqchuc = '';
    case {1}
        kqchuc = 'muoi';
    case {2}
        kqchuc = 'hai muoi';
    case {3}
        kqchuc = 'ba muoi';
    case {4}
        kqchuc = 'bon muoi';
    case {5}
        kqchuc = 'nam muoi';
    case {6}
        kqchuc = 'sau muoi';
    case {7}
        kqchuc = 'bay muoi';
    case {8}
        kqchuc = 'tam muoi';
    case {9}
        kqchuc = 'chin muoi';
end

switch donvi
    case {0}
        kqdonvi = '';
    case {1}
        kqdonvi = ' mot';
    case {2}
        kqdonvi = ' hai';
    case {3}
        kqdonvi = ' ba';
    case {4}
        kqdonvi = ' bon';
    case {5}
        kqdonvi = ' nam';
    case {6}
        kqdonvi = ' sau';
    case {7}
        kqdonvi = ' bay';
    case {8}
        kqdonvi = ' tam';
    case {9}
        kqdonvi = ' chin';
end

fprintf('%s%s', kqchuc, kqdonvi)

