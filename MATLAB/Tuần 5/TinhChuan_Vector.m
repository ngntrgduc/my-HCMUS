function p = TinhChuan_Vector(x, n)
    s = 0;
    if n == 1 
        for i=1:length(x)
            s = s + abs(x(i));
        end
        p = s; 
    elseif n == 2
        for i=1:length(x)
            s = s + x(i)^2;
        end
        p = sqrt(s);
    else 
        s = abs(x(1));
        for i=2:length(x)
            if abs(x(i)) > s
                s = abs(x(i));
            end
        end
        p = s;
    end       
end