function m = year2016(month)

if  ~isscalar(month)|| month < 1 || month >12 || uint8(month) ~= month 
    m=[];
else
days = [31,29,31,30,31,30,31,31,30,31,30,31];

month_week = [5,1,2,5,7,3,5,1,4,6,2,4];
month_name{1}  = 'January';
month_name{2}  = 'February';
month_name{3}   = 'March';
month_name{4}   = 'April';
month_name{5}   = 'May';
month_name{6}   = 'June';
month_name{7}   = 'July';
month_name{8}   = 'August';
month_name{9}   = 'September';
month_name{10}  = 'October';
month_name{11}  = 'November';
month_name{12}  = 'December';

week_name{4} = 'Mon';
week_name{5} = 'Tue';
week_name{6} = 'Wed';
week_name{7} = 'Thu';
week_name{1} = 'Fri';
week_name{2} = 'Sat';
week_name{3} = 'Sun';

total_days = 0;
for j = (1:month-1)
    total_days = total_days + days(j);
end
    

for i = (1:days(month))
    m(i).month = char(month_name(month));
    m(i).date = i;
    m(i).day = char(week_name(mod(total_days+i-1,7)+1));
end

end
    
    
    