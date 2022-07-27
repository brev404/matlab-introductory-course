clc
clear
close all;

%a
step =0.1;
tau=-10:step:15;
figure(1);
subplot(2,1,1);
plot(tau,f(tau));
axis([min(tau), max(tau), -3, 4]);
xlabel('Timp \tau [s]'), ylabel('Amplitudine'), title('f(\tau)');
grid;

subplot(2,1,2);
plot(tau,g(tau));
axis([min(tau), max(tau), -4, 4]);
xlabel('Timp \tau [s]'), ylabel('Amplitudine'), title('g(\tau)');
grid;

tmin = 0;
tmax = 15;
t = tmin:step:tmax;

for index_t = 1:length(t) 
figure(2);
subplot(2,1,1);
plot(tau, f(tau),'b');
xlabel('Timp \tau [s]');
ylabel('Amplitudine');
title('Semnalele f(\tau), g(\tau+t) și produsul lor');

hold on
plot(tau,g(tau + t(index_t)),'r');
prod = f(tau).*g(tau + t(index_t));
stem(tau, prod,'g');
hold off

axis([min(tau),max(tau),-7,10]);
legend('f(\tau)', 'g(\tau+t)', 'f(\tau)g(\tau+t)');
grid;

cnv(index_t) = integral(@(tau)f(tau).*g(tau + t(index_t)),-10,10);
subplot(2,1,2);
plot(t(1:length(cnv)),cnv);
xlabel('Timp t [s]');
ylabel('Amplitudine');
title('Corelația','Interpreter','latex');
axis([min(tau),max(tau),-10,15]);
grid;

pause(0.1);
end