function [x,y,n] = Giai_PT_Bac_2(a, b, c)
    d = b^2 - 4*a*c;
    if a == 0
       [x, n] = Giai_PT_Bac_1(b, c); 
       y = x;
    elseif d < 0
        x = NaN;
        y = NaN;
        n = 0;
    else
       x = (-b+sqrt(d)) / (2*a);
       y = (-b-sqrt(d)) / (2*a);
       n = 2;
    end
end