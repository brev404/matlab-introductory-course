function raspuns = calculeazaSumaMagica(n, t)

raspuns = 0;

for i = 1:n
    raspuns = raspuns + (sin((2*i - 1) * t)) / (2*i - 1);
end