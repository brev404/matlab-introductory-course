function rezultat = fi(t,T)

rezultat = zeros(1,length(t));
for index_t = 1:length(t)
 if mod(t(index_t),T)<T/2
 rezultat(index_t) = 1;
 else
 rezultat(index_t) = 0;
 end
end