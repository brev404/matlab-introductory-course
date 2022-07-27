function [raspuns, kmin] = approximatePi(minErr)

raspuns = sqrt(12);
k = 0;
sum = 0;
kmin = 0;

while (pi - minErr >= raspuns) || (raspuns >= pi + minErr)
    sum = sum + ((-3)^(-k))/(2*k+1);
    kmin = k;
    k=k+1;
    raspuns = sqrt(12) * sum;
end