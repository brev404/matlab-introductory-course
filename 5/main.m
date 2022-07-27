clc;
clear;
close all;

%  (f1 * f2)(t) are transformata Fourier F(w) = F1(w)F2(w)
%  F1(w) = 4*sinc(2w)e^(jw)
%  F2(w) = -6*sinc(w)e^(-2jw)

T = 1;
pas = T/100;
t = -6:pas:6;
k = 10;
w = -(k.*pi)/T:pas:(k.*pi)/T;

% transformata Fourier inversa
for i = 1:length(t)
    f(i) = 1/(2*pi) * integral(@(w)F(w).*exp(1j * w * t(i)),-15,15);
end

%f(t)
figure(1);
plot(t, f);
xlabel('timp (s)');
ylabel ('Amplitudine');
title('f1 * f2');

% partea a doua

T = 1;
pas = T/100;
t = -7:pas:7;
k = 10;
w = -(k.*pi)/T:pas:(k.*pi)/T;

%Reprezentam functia
figure(2);
plot(t, f1(t));

% transformata
for i = 1:length(w)
    F(i) = integral(@(t)f1(t).*exp(-1j * w(i) * t),-15,15);
end
% spectrul de amplitudini
figure(3);
subplot(2,1,1);
plot(w, abs(F));
xlabel('w');
ylabel ('Amplitudine');
title('abs(F)');
grid;
axis tight;

% spectrul de faze
subplot(2,1,2);
plot(w, angle(F));
xlabel('w');
ylabel ('Faza');
title('angle(F)');
grid;
axis tight;

% transformata complexa 3d
figure(4);
plot3(w, real(F), imag(F));
xlabel('w');
ylabel('real');
zlabel('imag');