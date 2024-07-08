for x =6:1000
    sum = 0;
    for i=1:x-1
        if mod(x, i) == 0
            sum = sum + i;
        end
    end
    if sum == x
        disp(x);
    end
end
