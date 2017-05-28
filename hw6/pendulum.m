function T = pendulum(L,a0)
theta = a0;
w = 0;
g = 9.8;
a = 0;
delta_t = 10^-6;
T = 0;
if L <= 0
    T=0;
else
while theta > 0
    a = g*sin(theta)/L;
    w = w + delta_t * a;
    delta = w*delta_t;
    theta = theta-delta;

    T = T + delta_t;
    
end
T = 4*T;
end

