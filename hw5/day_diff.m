function diff = day_diff(month1, day1, month2, day2)
month = [31    28    31    30    31    30    31    31    30    31    30    31];
if  ~isscalar(month1) || ~isscalar(month2) || ~isscalar(day1) || ~isscalar(day2)
    diff = -1;
elseif month1 ~= fix(month1) || day1 ~= fix(day1) || month2 ~= fix(month2) || day2 ~= fix(day2) 
    diff = -1;
elseif month1 < 1 || month1 > 12 || month2 < 1 || month2 > 12
    diff = -1
elseif day1 < 1 || day1 > month(month1) || day2 < 1 || day2 > month(month2)
    diff = -1;
elseif month1 > month2
    diff = sum(month(month2 : month1-1)) + (day1 - day2);
elseif month2 > month1
    diff = sum(month(month1 : month2-1)) + (day2 - day1);
else
    diff = day2 - day1
    if diff < 0
        diff = -diff
    end
    
end

        
    
