function v_index = maxproduct(A,n)
[x,y] = size(A);
max_p = intmin('uint64');

for i = (1:x)
    [m,idx] = get_max(A(i,:),n);
    if m > max_p
        max_p = m;
        v = zeros(n,2);
      
            
    end
        
end

for i = (1:y)
    get_max(A(:,i),n);
end

get_max(diag(A),n);

get_max(diag(A'),n);


function [m,idx] = get_max(v,n)
if length(v) < n 
    m = nan;
    idx = -1;
else
    m = intmin('uint64');
    for i = (1:n-length(v))
        p = 1;
        idx = -1;
        for j = (i:i+n)
            p = p * v(j);
        end
        
        if p > m
            m = p;
            idx = i;
        end
    end
end

        
        
    
    
