function matrix = logiunpack(cell)
n = length(cell);
matrix = false(n);
for i = (1:n)
    matrix(i,cell{i}) = 1;
end
