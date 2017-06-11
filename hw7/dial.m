function num = dial(chars)
num = "";
flag = 0;
for i = (1:length(chars))
    cur_char = chars(i);
    
    if cur_char >= 'A' && cur_char <='C'
        num = num + "2";
    elseif cur_char >= 'D' && cur_char <='F'
        num = num + "3";
    elseif cur_char >= 'G' && cur_char <='I'
        num = num + "4";
    elseif cur_char >= 'J' && cur_char <='L'
        num = num + "5";
    elseif cur_char >= 'M' && cur_char <='O'
        num = num + "6";
    elseif cur_char >= 'P' && cur_char <='S'
        num = num + "7";
    elseif cur_char >= 'T' && cur_char <='V'
        num = num + "8";
    elseif cur_char >= 'W' && cur_char <='Z'
        num = num + "9";
    elseif cur_char >= '0' && cur_char <= '9'
        num = num + string(cur_char);
    else
        flag = 1;
    end
    if ~flag
        num = uint64(str2num(char(num)));
    else
        num = uint64(0);
    end
end

