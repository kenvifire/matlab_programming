function diag_sum = spiral_diag_sum(n)
diag_sum = 1;
m = 1;
while 2*m + 1 <= n
    diag_sum = diag_sum + 16*m*m + 4*m +4;
    m=m+1;
end


