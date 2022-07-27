function semnal1=f1(t)

semnal1 = zeros(1,length(t));

prag = 0.00001;
for i=1 : length(t)
 if (t(i) - prag > -2) && (t(i) + prag < 6)
    semnal1(i) = (t(i)^3 - 6*t(i)^2 + 3*t(i) + 10);
 end
end