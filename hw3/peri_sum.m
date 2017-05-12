function sA = peri_sum(A)
sA = sum(A(1,(1:1:end))) + sum(A(end,(1:1:end))) + sum(A((2:1:end-1),1)) + sum(A((2:1:end-1),end))
