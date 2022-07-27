function rezultat = sd(t, T)

w0 = 2*pi / T;

rezultat = zeros(1,length(t));
for index_t = 1:length(t)
    rezultat(index_t) = abs(sin(w0*t(index_t)));
end