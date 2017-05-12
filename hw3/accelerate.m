function amag = accelerate(F1, F2, m)
F = F1 + F2
aV = F./m
amag = sqrt(sum(aV.^2))