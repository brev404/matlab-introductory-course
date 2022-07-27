function M=mI(rows, columns) % rows = m, columns = n

M = zeros(rows,columns);

for row = 1:rows
    for column = 1:columns
        if row == column
            M(row, column) = 1;
        end
    end
end


