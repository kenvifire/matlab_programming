function s = halfsum(A)
[m,n] = size(A);
s = 0;
idx_sum = m+1;
for i = 1:n
    start = idx_sum-i;
    if start <=0 
        start = 1;
    end
    for j = start:m
        s = s + A(j,i);
    end
end
end

        
