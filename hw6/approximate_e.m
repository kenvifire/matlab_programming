function [e,k] = approximate_e(delta)
e = 1;
real_e = exp(1);
k = 0;
f = 1;
while abs(e-real_e) > delta
    k = k+1;
    f = f*k;
    e = e+ 1/f;
end