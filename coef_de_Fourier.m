%{
Coeficiente da Série de Fourier trigonométrico
Usar exemplo realizado em sala
a_0 = 0,504; a_n = 0,504 x 2/(1+16n^2);b_n = 0,504 x 8n/(1+16n^2); 
%}

% Coeficiente da Série de Fourier trigonométrico
%clear; clc; % limpar variáres e command windows

n = 1:10;

a(1) = 0.504;
a(n+1) = 0.504*2./(1+16*n.^2); % o ponto após o 2 e n é só para indicar que vetor
b(1) = 0;
b(n+1) = 0.504*8*n./(1+16*n.^2);
a
b

% Plotagem dos coeficientes a_n e b_n
n = [0,n];

subplot(2,1,1)
stem(n,a)
xlabel('n');
ylabel('an');
title('Coef an')

subplot(2,1,2)
stem(n,b)

xlabel('n');
ylabel('bn');
title('Coef bn')

% Coeficiente Serie Fourier Compacta

n = 1:10;

c(1) = a(1);

c(n+1) = sqrt(a(n+1).^2 + b(n+1).^2);

fase(1) = 0;
fase(n+1) = atan(-b(n+1)./a(n+1)); % ou fase(n+1) = atan2(-b(n+1),a(n+1));

% c  % encontrar valor de cn
% fase  % encontrar valor de fase

% Plotagem do espectro Espectro Fourier - Magnitude

figure()

n = [0,n];

stem(n,c);
xlabel('n');
ylabel('Cn');
title('Espectro Magnitude')

% Plotagem do espectro Espectro Fourier - Fase

figure()

stem(n,fase);
xlabel('n');
ylabel('Fase');
title('Espectro Fase')
