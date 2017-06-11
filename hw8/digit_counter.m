function digit_count = digit_counter(filename)
digit_count = 0;
fid = fopen(filename,'r');
if fid < 0 
    digit_count = -1;
else
    oneline = fgets(fid);
    while ischar(oneline)
        for i = (1:length(oneline))
            if oneline(i) >='0' && oneline(i) <= '9'
                digit_count = digit_count +1;
            end
        end
        oneline = fgets(fid);
    end
    fclose(fid);
end

