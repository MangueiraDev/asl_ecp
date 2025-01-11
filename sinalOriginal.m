% Sinal Original

t = linspace(0,pi,1000); % t de 0 a pi cpm 1000 amostras
x = exp(-t/2);

T = pi; % periodo

t = [t-2*T t-T t t+T t+2*T]; % t vai de -2pi a +2pi, ou seja, 5 oscilacoes

x = [x x x x x];  % 5 oscilacoes 

% plot(t,x) 

%Coeficientes de Fourier Exponencial

D = zeros(50,length(t));  % 5 senoides

D(1,:) = 0.504;

for n=1:size(D,1)-1
    D(n+1,:) = 0.504 / (1+1i*4*n)*exp(1i*n*2*t) + 0.504 / (1-1i*4*n)*exp(1i*(-n)*2*t); % calculo barisenoide
end

%% Senoides
for k=1:5
    plot(t,D(k,:))
    hold on
end

%%

S = cumsum(D);

figure()

plot(t,x,'k', t,S(50,:),'b');

axis([-2*pi 2*pi -0.4 1]); % [xmin xmax ymin ymax]

