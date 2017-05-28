function [product, ind] = max_product(v,n)
len = length(v);
if len < n 
    product = 0;
    ind = -1;
elseif len == n
    product = prod(v);
    ind = 1;
else
    product = prod(v(1:n));
    ind = 1;
    for i = 1:(len - n+1)
      cur_prod = prod(v(i:i+n-1));
      if cur_prod > product
          product = cur_prod;
          ind = i;
      end
    end
end
