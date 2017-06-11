function zero_point = find_zero(f, x1, x2)
y1 = f(x1);
y2 = f(x2);
x3 = (x1+x2)/2;
y3 = f(x3);

while abs(y3) >= 1e-10
    if y1 * y3 < 0
        x2 = x3;
    elseif y2 * y3 < 0
        x1 = x2; 
        x2 = x3;
    end
    y1 = f(x1);
    y2 = f(x2);
    x3 = (x1+x2)/2;
    y3 = f(x3);
end
zero_point = x3;
