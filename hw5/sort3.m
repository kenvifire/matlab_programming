function [a, b,c] = sort3(v)
a = v(1);
b = v(2);
c = v(3);

if a > b
    t=a;a=b;b=t;
end
if b > c
    t=b;b=c;c=t;
end
if a > b
    t=a;a=b;b=t;
end
