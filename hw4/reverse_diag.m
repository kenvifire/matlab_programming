function diag = reverse_diag(n)
diag = zeros(n);
diag(n:(n-1):n^2-1)=1;

