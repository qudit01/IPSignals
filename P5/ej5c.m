addpath('../../funciones');

set(0, "defaulttextfontsize", 24)  % title
set(0, "defaultaxesfontsize", 14)  % axes labels
set(0, "defaulttextfontname", "Courier")
set(0, "defaultaxesfontname", "Courier")
set(0, "defaultlinelinewidth", 2)


K = 10; n = [-K:0.001:K];
s0 = 1;
N = 3; x = 2*cos(2*pi*n*s0);
ds = 0.001; s = [-2:ds:2]; X = zeros(size(s));
for k = 1:length(s)
  X(k) = sum(x.*exp(-1i*2*pi*s(k)*n));
end
% En tiempo
subplot(3,1,1)
plot(n, x) ; hold on
title("Onda original con s0")
ylabel('x[n]')

% Espectro de amplitud
subplot(3,1,2)
stem(s,abs(X),';Espectro de Amplitud de X(s);yo')
ylabel('|X(s)|')

% Espectro de fase
subplot(3,1,3)
plot(s,angle(X),';Espectro de fase de X(s);go')
ylabel('phi[n]')
xlabel('n')

##subplot(3,1,3)
##plot(X,';Onda transformada;go');
##plot(real(X),';Parte real de X(s);gx'); hold off
##ylabel('X(s)')

%% La aproximación se afina cuando el rango de la función se agranda
%% Dado que se sabe mas de la función (?