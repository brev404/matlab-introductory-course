function Mcolumn = sumRow(M)

[numberRows, numberCols] = size(M);

Mcolumn = zeros(numberRows, 1);

for row = 1:numberRows
    sumRow = 0;
    for column = 1:numberCols
        sumRow = sumRow + M(row, column);
    end
    Mcolumn(row,1) = sumRow;
end