function p = poly_val(c0, c, x)
if ismatrix(c) && isempty(c)
    p = c0;
elseif isscalar(c)
    p = c0 + sum(c * x);
else
    c = c(:)';
    t = x.^[1:length(c)];
    
    p = c0 + sum(c .* t);
end
