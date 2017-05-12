function M = top_right(N, n)
[c,r] = size(N);
M = N([1:1:n],[r-n+1:1:r])