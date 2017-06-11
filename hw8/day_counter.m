function mon_days = day_counter(year)
month_day = [31,28,31,30,31,30,31,31,30,31,30,31];
days = (year-1776) * 365;

for y = (1776:year-1)
    if is_leap(y)
        days = days+1;
    end
end


mon_days = 0;
if mod(days+1,7) == 1
        mon_days = mon_days +1;
end


for m = (1:11) 
    if m == 2 && is_leap(year)
        days = days + 29;
    else
        days = days + month_day(m);
    end
    if mod(days+1,7) == 1
        mon_days = mon_days +1;
    end
end
            

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