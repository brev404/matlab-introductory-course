function rezultat = fc(t,T)
% Functia returneaza in variabila rezultat amplitudinile corespunzatoare 
% functiei de comutatie (care este 1 de la 0 la T/2 si -1 de la T/2 la T)
% Parametrii de intrare sunt:
% t - vectorul corespunzator momentelor de timp in care se va face
% evaluarea functiei (adica momentele de timp dintr-un interval pentru care
% dorim sa returnam amplitudinea functiei noastre
% T - este perioada semnalului. 
% Pentru fiecare element din vectorul de momente de timp va trebui sa
% verificam daca momentul curent t(index_t) se afla in intervalul
% [k*T,k*T+T/2], situatie in care rezultatul va fi 1 la indexul
% corespunzator, sau in intervalul [k*T+T/2,k*T+T], situatie in care
% rezultatul ia valoarea -1.
% Pentru a verifica in ce interval se regaseste momentul de timp curent vom
% realiza impartirea cu rest folosin functia mod(a,b), ce returneaza restul
% impartirii lui a la b, adica a/b = k*b+r, unde r = mod(a,b), iar k este
% un numar intreg. In cazul nostru mod(t(index_t),T) va returna restul
% impartirii momentului curent de timp la T, ceea ce inseamna ca rezultatul
% se va regasi in intervalul [0,T), unde mai departe putem verifica daca
% acesta este mai mic decat T/2, situatie in care rezultatul la indexul
% respectiv este 1, sau mai mare decat T/2, situatie in care rezultatul
% este -1.
% Intai initializam rezultatul cu un vector de valori nule de dimensiunea
% vectorului de timp
rezultat = zeros(1,length(t));
for index_t = 1:length(t)
 if mod(t(index_t),T)<T/2
 rezultat(index_t) = 1;
 else
 rezultat(index_t) = -1;
 end
end