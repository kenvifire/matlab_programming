function type = integerize(A)
i_max = max(max(A));
i_min = min(min(A));
if int8(i_max) == i_max && int8(i_min) == i_min
    type = 'int8';
elseif int16(i_max) == i_max && int16(i_min) == i_min
    type = 'int16';
elseif int32(i_max) == i_max && int32(i_min) == i_min
    type = 'int32';
elseif int64(i_max) == i_max && int64(i_min) == i_min
    type = 'int64';
else
    type = 'NONE'
end


    
