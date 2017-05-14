function out = exp_average(in,b)
persistent pb
persistent pout
if nargin == 1
    if isempty(pout)
        pb = 0.1;
        out = in;
    else
        out = pb * in + (1-pb) * pout; 
    end
else 
    out = in;
    pb = b;
end
pout = out;
