clc
clear
close all;

f0 = 200; %Hz
T0 = 1/f0; %s
step = T0/100; %increment

t = 0:step:5*T0;

signals = fc(t,T0);

figure(1);
plot(t,signals);

signals = fi(t,T0);

figure(2);
plot(t,signals);

signals = sm(t, T0);

figure(3);
plot(t,signals);

signals = sd(t, T0);

figure(4);
plot(t, signals);