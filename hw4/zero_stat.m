function stat = zero_stat(M)
[m,n] = size(M);
stat =100-(100* sum(sum(M)))/(m*n);
