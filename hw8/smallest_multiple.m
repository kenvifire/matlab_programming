function prod = smallest_multiple(n)
v = (2:1:n);
prod = uint64(1);
for i = (1:length(v)-1)
    for j = (i+1:length(v))
        if mod(v(j),v(i)) == 0
            v(j) = v(j) / v(i);
        end
    end
end

for k = (1:length(v))
    temp = prod * v(k);
    if (temp / v(k)) ~= prod 
        prod = uint64(-1);
        break;
    else
        prod = temp;
    end
end


end