function M = replaceElement(M, valueToBeReplaced, valueToReplace)

[numberRows, numberCols] = size(M);

for row = 1:numberRows
    for column = 1:numberCols
        if M(row, column) == valueToBeReplaced
            M(row, column) = valueToReplace;
        end
    end
end

