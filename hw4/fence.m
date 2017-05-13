function [segNum,poleNum] = fence(lng,seg)
segNum = ceil(lng/seg);
poleNum = segNum + 1;