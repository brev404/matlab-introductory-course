function semnal2 = F(w)

semnal2 = zeros(1,length(w));

for i=1 : length(w)
 semnal2(i) = (-48*sin(2*w(i))*sin(w(i))*exp(-1j*w(i))) / (2 * w(i)^2) ;
end