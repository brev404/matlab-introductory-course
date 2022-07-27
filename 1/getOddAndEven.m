function [oddValues, evenValues] = getOddAndEven(A)

[numberRows, numberCols] = size(A);

%oddValues = zeros(numberRows*numberCols);
%evenValues = zeros(numberRows*numberCols);

indxEven = 1;
indxOdd = 1;

for row = 1:numberRows
    for column = 1:numberCols
        if A(row, column) % 2 == 1
            oddValues(indxOdd) = A(row, column);
            indxOdd = indxOdd + 1;
        else A(row, column) % 2 == 0
            evenValues(indxEven) = A(row, column);
            indxEven = indxEven + 1;
        end
    end
end

%oddValues = coder.resize(oddValues,indxOdd);
%evenValues = coder.resize(evenValues,indxEven);