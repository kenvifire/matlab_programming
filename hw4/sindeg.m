function [sinval,avg] = sindeg(deg)
sinval = sin(deg./(180/pi));
avg = mean(mean(sinval));
