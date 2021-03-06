function s_val = triangle_wave(n)
s_val = zeros(1,1001);
i = 1;
for t = 0:4*pi/1000:4*pi
    s = 0;
    for k = 0:n
        s = s + ((-1)^k * sin((2*k+1)*t))/(2*k+1)^2;
    end
    s_val(i) = s;
    i=i+1;
end
