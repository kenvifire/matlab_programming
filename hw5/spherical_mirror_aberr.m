function mbd = spherical_mirror_aberr(fn, D)
f = D * fn;
delta_x = 0.01;
X = [0:delta_x:D/2];
theta = asin(X./(2*f));
d = 2*f*tan(2*theta).*(1./cos(theta) -1);
mbd = 8*delta_x * sum(X.*d)/(D^2);