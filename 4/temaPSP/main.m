clc
clear
close all

f0 = 50;

T = 1/f0;

omega0 = 2 * pi * f0;

pas = T/100;

t = 0:pas:10;

for n = 1:40
    subA = a(t, n);
    figure(1);
    plot(t,subA);
    xlabel('timp (s)');
    ylabel (' Amplitudine ');
    title(' Functie poarta a');
    hold on;
end
%sirul este reprezentativ pentru -delta(t-7)

t = -10:pas:10;
for n = 1:40
    subB = b(t, n);
    figure(2);
    plot(t,subB);
    xlabel('timp (s)');
    ylabel ('Amplitudine');
    title('Functie poarta b');
    hold on;
end

% sirul este reprezentativ pentru delta'(t+3)

t = -10:pas:10;
for n = 1:40
    subC = c(t, n);
    figure(3);
    plot(t,subC);
    xlabel('timp (s)');
    ylabel ('Amplitudine');
    title('Functie poarta c');
    hold on;
end

% sirul este reprezentativ pentru -delta(t+5)