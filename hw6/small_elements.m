function index = small_elements(X)
index = [];
[m,n] = size(X);
for i = 1:n
    for j = 1:m
        if X(j,i) < i*j
            index = [index; [j,i]];
        end
        
    end
end
