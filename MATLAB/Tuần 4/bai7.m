n = input('Nhap n: ');
donvi = mod(n, 10);
n = (n - donvi)/10;
chuc = mod(n, 10);
tram = (n - chuc)/10;
switch tram
    case {0}
        kqtram = '';
    case {1}
        kqtram = 'mot tram ';
    case {2}
        kqtram = 'hai tram ';
    case {3}
        kqtram = 'ba tram ';
    case {4}
        kqtram = 'bon tram ';
    case {5}
        kqtram = 'nam tram ';
    case {6}
        kqtram = 'sau tram ';
    case {7}
        kqtram = 'bay tram ';
    case {8}
        kqtram = 'tam tram ';
    case {9}
        kqtram = 'chin tram ';
end

switch chuc
    case {0}
        if donvi == 0
            kqchuc = '';
        else
            kqchuc = 'le';
        end
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

fprintf('%s%s%s', kqtram, kqchuc, kqdonvi)