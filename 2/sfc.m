function sfc(T)

f0 = 1/T;
omega0 = 2*pi*f0;
pas = T/100;
t=-T:pas:2*T;

%% Seria Fourier Complexa
N = 10; % numar armonice afisez 10 deoarece calculeaza prea mult
C = zeros(1,2*N+1);
% Vectorul C() continue coeficientii seriei Fourier complexe
% pentru frecvente de la -N*omega0 la N*omega0, deci vectorul
% va avea 2*N+1 valori
for n=-N:N
 % determinam coeficientii. (pentru Octave trebuie desfacuta
 % exponentiala in sinus si cosinus)
 C(n+N+1) = 1/T * integral(@(t)functieB(t,T).*exp(-1j*n*omega0*t),0,T);
 % Vom verifica daca partea reala sau cea imaginara au valori foarte
 % mici si aplicam pragul pentru a le forta la 0
 re = real(C(n+N+1));
 im = imag(C(n+N+1));
 if abs(re)<10^-10
 re = 0;
 end
 if abs(im)<10^-10
 im = 0;
 end
 % Reconstruim coeficientii din partea reala si cea imaginara
 C(n+N+1)=re+1j*im;
end
C
% Afisam spectrul de amplitudine si de faza
figure(6);
subplot(2,1,1);
stem((-N:N)*omega0,abs(C));
xlabel('Frecventa \omega [rad/s]');
ylabel('Amplitudinea |C(n\omega_0)|');
title('Spectrul de amplitudine');
subplot(2,1,2);
stem((-N:N)*omega0,angle(C));
xlabel('Frecventa \omega [rad/s]');
ylabel('Faza arg\{C(n\omega_0)\}');
title('Spectrul de faze');