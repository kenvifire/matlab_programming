function max_prod = palin_product(dig, lim)
max_dig = mpower(10,dig)-1;
min_dig = mpower(10,dig-1);
max_prod = 0;
for m = (max_dig:-1:min_dig)
    for n = (max_dig:-1:min_dig)
        prod = m * n;
        prod_str = num2str(prod);
        
        if strcmp(prod_str,reverse(prod_str)) == 1 && prod > max_prod && prod < lim
            max_prod = prod;
           
        end
    end
end

        