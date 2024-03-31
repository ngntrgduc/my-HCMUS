function [x, n] = Giai_PT_Bac_1(a, b)
    if (a == 0)
        if (b == 0)
            n = -1;
            x = NaN;
        else 
            n = 0; 
            x = NaN;
        end
    else 
       x = -b/a;
       n = 1;
    end
end