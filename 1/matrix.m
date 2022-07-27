clc
clear
close all;

M = round(10*rand(10,10));

sumCorners = M(1,1) + M(10,10) + M(1,10) + M(10,1);
sumTotal = 0;

for row = 1:10
    for colum = 1:10
        sumTotal = sumTotal + M(row, colum);
    end
end

mId = mI(10,10);

mCol = sumRow(M);

mId = replaceElement(mId, 1, 10);

err = 0.0001;
[piAprox, kmin] = approximatePi(err);

[oddValues, evenValues] = getOddAndEven(M);

sumaMagica = calculeazaSumaMagica(10,10);

t = linspace(0,4*pi,1001);
p = zeros(1, 1001);
n = 1000; % cu cat creste n ul cu atat semnalul final este mai apropiat de un semnal dreptunghic

for i = 1:1001
    p(1,i) = calculeazaSumaMagica(n,t(i));
end

figure(1);
plot(t, p);
title("suma magica in timp");
xlabel("timp");
ylabel("amplitudine");