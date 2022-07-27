function rezultat = sm(t,T)

w0 = 2*pi / T;

rezultat = zeros(1,length(t));
for index_t = 1:length(t)
 if mod(t(index_t),T)<T/2
 rezultat(index_t) = sin(w0*t(index_t));
 else
 rezultat(index_t) = 0;
 end
end