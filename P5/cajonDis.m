addpath('../../funciones');

set(0, "defaulttextfontsize", 20)  % title
set(0, "defaultaxesfontsize", 12)  % axes labels
set(0, "defaulttextfontname", "Courier")
set(0, "defaultaxesfontname", "Courier")
set(0, "defaultlinelinewidth", 2)


K = 10; n = [-K:0.1:K];
N = 3; x = cajon(n);
ds = 0.001; s = [-2:ds:2]; X = zeros(size(s));
for k = 1:length(s)
  X(k) = sum(x.*exp(-1i*2*pi*s(k)*n));
end

% En tiempo
subplot(3,1,1)
#plotCompleto([-K K -0.5 1.5], 'n', 'x[n]', 'Onda original de x[n]', 10, 'bo', 1.5, n, x);
plot(n, x,';Ondicula original;bo') ; hold on
plot(n, real(x),';Ondicula antitransformada;rx'); hold off
#ylabel('x[n]')

% Espectro de amplitud
subplot(3,1,2)
stem(s, abs(X),';Espectro de Amplitud;bo')
ylabel('X[s]')

% Espectro de fase
subplot(3,1,3)
plot(s,angle(X),';Espectro de fase de X(s);go')
ylabel('phi[n]')
xlabel('n')

##subplot(3,1,3)
##plot(s, X,';Onda transformada;go');
##plot(s, real(X),';Parte real de X(s);gx'); hold off
##ylabel('X(s)')