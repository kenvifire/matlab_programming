function leap = is_leap(y)
if mod(y,4) == 0
    if mod(y,100) ~= 0
        leap = 1;
    else
        if mod(y,400) ==0
            leap = 1;
        else
            leap = 0;
        end
    end
else
    leap = 0;
end