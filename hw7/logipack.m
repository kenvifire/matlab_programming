function cell_v = logipack(matrix)
cell_v = cell(1,length(matrix));
for i = (1:length(matrix))
    m = matrix(i,:);
    v = [];
    for j = (1:length(m))
        if m(j)
            v = [v j];
        end
    end
    cell_v{i} = v;
end
end