function subpunctulB()

T = 1;
step = T/100;
timp = 0:step:5*T;

semnal = functieB(timp, T);

%sfa(T); 
%sfc(T); % cu aceste doua functii decomentate, semnalul de la punctul B nu
%are o forma stabila si fluctueaza foarte mult