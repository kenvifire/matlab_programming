function E = even_index(M)
[m,n] = size(M);
C = [2:2:m];
R = [2:2:n];
E = M(C,R);
